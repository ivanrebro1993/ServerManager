#!/bin/bash

source ./bin/config.cfg

CMD=$1

function build {    
    (cd $SERVICES_FOLDER && docker-compose build)
}

function run {
    (cd $SERVICES_FOLDER && docker-compose up)
}

function rebuild {
    (cd $SERVICES_FOLDER && docker-compose up --build)
}

function help {
    echo "help info"
}

function state {
    echo "$APP_NAME: $1"
}

function unknown {
    echo "$APP_NAME: $CMD is not a $APP_NAME command, see '$APP_NAME help'"
}

function exec {
    case $CMD in
        "")
            state "start"
            rebuild
        ;;
        "build")
            state $CMD
            build
        ;;
        "run")
            state $CMD
            run
        ;;
        "start")
            state $CMD
            rebuild
        ;;
        "help")
            state $CMD
            help
        ;;
        *)
            unknown
        ;;
    esac
}

exec
