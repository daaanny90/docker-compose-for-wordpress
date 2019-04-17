# Docker configuration for Wordpress local development environment

## What are those files?
### `docker-compose.yml`
One is `docker-compose.yml` that I use to start my development environment with Docker.
I usually create a folder with the theme I want to develop, and start the container inside this folder.
In this way, I have the complete Wordpress installation in the container and only the theme files on my local machine.

### `stop.sh`
The other one is `stop.sh`, a little script to make a backup of the database every time that I stop the containers.
Thanks to this little script, I have always a copy of the database with all the settings, plug-in, etc. of my Wordpress installation.

## How to use them to start a new Wordpress project

1. Create the project folder
`mkdir project_name && cd project_name`

2. Download the files inside the folder
3. Modify the files with your project name
4. Start the container
`docker-compose up -d`
5. To stop the container give
`./stop.sh`

**Hope you will find it useful!**
