#!/bin/bash
#
#Flush docker containers and images
#

flushDocker() {
    echo "Flushing"
    # Delete all containers
    docker rm $(docker ps -a -q)

    # Delete all images
    docker rmi -f $(docker images -q)
}


while true; do
    read -p "Do you really want flush all Docker's files?" yn
    case $yn in
        [Yy]* ) flushDocker ; break ;;
        [Nn]* ) exit ;;
        * ) echo "Please answer yes or no.";;
    esac
done
