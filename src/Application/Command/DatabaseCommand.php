<?php

namespace Application\Command;

use Knp\Command\Command;
use Symfony\Component\Yaml\Yaml;

use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Process\Process;

class DatabaseCommand extends Command
{
    protected function configure()
    {
        $this->setName('wisembly2:database')
            ->setDescription('Export and import DB utilities')
            ->addOption('dump', null, InputOption::VALUE_NONE, 'Dump current DB tables and store them in db/ folder')
            ->addOption('import', null, InputOption::VALUE_NONE, 'Load saved DB tables in db/ folder in database')
            ->addOption('clone', null, InputOption::VALUE_REQUIRED, 'Clone a db from dump file to another database. eg --clone="fr->de"');
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        if (!$input->getOption('dump') && !$input->getOption('import') && !$input->getOption('clone')) {
            $output->writeln('<error>You must add --dump, --import or --clone="lang1->lang2" option to do something</error>');
            return;
        }

        $config = Yaml::parse(__DIR__.'/../../../app/config/config.yml');

        if (!is_array($config)) {
            $output->writeln('<error>Wrong config yaml file</error>');
            return;
        }

        if (!isset($config['global']['mysqldump'])) {
            $output->writeln('<error>No mysqldump path found in config file</error>');
            return;
        }

        if (!isset($config['global']['mysql'])) {
            $output->writeln('<error>No mysql path found in config file</error>');
            return;
        }

        if ($input->getOption('dump')) {
            return $this->dump($config, $output);
        }

        if ($input->getOption('import')) {
            return $this->import($config, $output);
        }

        if ($input->getOption('clone')) {
            return $this->cloneDb($config, $input, $output);
        }
    }

    private function dump(array $config, OutputInterface $output)
    {
        $mysqldump = $config['global']['mysqldump'];

        foreach ($config['databases'] as $name => $database) {
            if ('default' === $name) {
                $default = $database;
                continue;
            }

            $db = array_merge($database, $default);
            $command = $mysqldump ." --add-drop-database -u ". $db['user'] ." -p". $db['password'] ." ". $db['dbname'] ." > ". __DIR__ . "/../../../db/" . $db['dbname'] .".sql";

            $output->writeln("<info>Dumping {$name} database..</info>");
            $process = new Process($command);
            $process->setTimeout(3600);
            $process->run();

            if (!$process->isSuccessful()) {
                $output->writeln('<error>'. $process->getErrorOutput() .'</error>');
                return;
            }
        }
        $output->writeln('<info>Done!</info>');
    }

    private function import(array $config, OutputInterface $output)
    {
        foreach ($config['databases'] as $name => $database) {
            if ('default' === $name) {
                $default = $database;
                continue;
            }

            $db = array_merge($database, $default);
            $mysql = 'mysql -u ' . $db['user'] . ' -p' . $db['password'];

            $output->writeln("<info>Dumping {$name} database if exists..</info>");
            $command = 'echo "DROP DATABASE IF EXISTS '. $db['dbname'] . '" | ' . $mysql . ' && echo "CREATE DATABASE ' . $db['dbname'] . '" | ' . $mysql;
            $process = new Process($command);
            $process->run();

            if (!$process->isSuccessful()) {
                $output->writeln('<error>'. $process->getErrorOutput() .'</error>');
                return;
            }

            $output->writeln("<info>Importing {$name} database..</info>");
            $command = $mysql . ' ' . $db['dbname'] . ' < ' . __DIR__ . '/../../../db/' . $db['dbname'] . '.sql';
            $process = new Process($command);
            $process->setTimeout(3600);
            $process->run();

            if (!$process->isSuccessful()) {
                $output->writeln('<error>'. $process->getErrorOutput() .'</error>');
                return;
            }
        }

        $output->writeln('<info>Done!</info>');
    }

    private function cloneDb(array $config, InputInterface $input, OutputInterface $output)
    {
        $reference = $input->getOption('clone');
        $clone = explode('->', $reference);

        $from = array_merge($config['databases']['default'], $config['databases'][$clone[0]]);
        $to = array_merge($config['databases']['default'], $config['databases'][$clone[1]]);

        $mysql = 'mysql -u ' . $to['user'] . ' -p' . $to['password'];

        $output->writeln("<info>Dumping " . $to['dbname'] . " database if exists..</info>");
        $command = 'echo "DROP DATABASE IF EXISTS '. $to['dbname'] . '" | ' . $mysql . ' && echo "CREATE DATABASE ' . $to['dbname'] . '" | ' . $mysql;
        $process = new Process($command);
        $process->run();

        if (!$process->isSuccessful()) {
            $output->writeln('<error>'. $process->getErrorOutput() .'</error>');
            return;
        }

        $output->writeln("<info>Cloning " . $to['dbname'] . " database with " . $from['dbname'] . " dump file..</info>");
        $command = $mysql . ' ' . $to['dbname'] . ' < ' . __DIR__ . '/../../../db/' . $from['dbname'] . '.sql';
        $process = new Process($command);
        $process->setTimeout(3600);
        $process->run();

        if (!$process->isSuccessful()) {
            $output->writeln('<error>'. $process->getErrorOutput() .'</error>');
            return;
        }

        $output->writeln('<info>Done!</info>');
    }
}