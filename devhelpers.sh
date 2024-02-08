dockershell () { docker run -it --entrypoint=/bin/bash sinatra-docker-app ; }
dockerbuild () { docker build -t sinatra-docker-app:latest   .  ; }
dockerrun () { docker compose up ; }
