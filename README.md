# Wisembly2

http://wisembly.com

## Installation

- git clone
- `cp app/config/config.yml.dist app/config/config.yml`
- edit `config.yml` accordingly
- get composer (if not globally installed)
- `php composer.phar install`
- create `wisembly_en` database
- `./app/console wisembly:database --import`
- you're done!
