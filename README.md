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
- create a virtual host that point to `/web`
- you're done!
