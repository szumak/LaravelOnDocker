# LaravelOnDocker
LoD - simply runs Laravel project on docker container

# Usage
       make [COMMAND]

# Description
This repository provides fast and easy way to run Laravel project using docker containers. 

## Where to start
Run:

	make new

Your new Laravel project will be placed in **www** directory. To start container run: 

	make start

Your application will be available under http://localhost:8180

# Options
**new**    creates new laravel project. See Makefile if you want to change Laravel version

**start**    starts docker container

**clean**  removes www folder

**npm_install**
      runs "npm install" command

**npm_watch**
      runs "npm run watch" command

**composer_install**
      runs "composer install" command

**help**   this screen
