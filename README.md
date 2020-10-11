 # wiremock + docker-compose.yml 

[![Docker version https://docs.docker.com/engine/install/ubuntu/](https://img.shields.io/badge/docker-19.03.11-blue)](https://docs.docker.com/engine/install/ubuntu/)
[![Docker-Compose version https://docs.docker.com/compose/install/](https://img.shields.io/badge/docker--compose-1.17.1-9cf)](https://docs.docker.com/compose/install/)

This repository is just an example of how to use wiremock in a docker container, plus some scripts I myself created for copying files from the host computer to the wiremock container, and generate a request and response files linking the response file inside the request.

## tl;dr

```bash
#start the container
docker-compose up

#add your files inside the folders
wiremock/
   \... __files/
   \... mappings/

#update it will copy the files to the container
./update
```


## Requirements

Before using, check the versions of your docker and docker-compose.

```bash
docker version 19.03.11
docker-compose version 1.17.1
```

## Usage
For starting the container execute:

```zsh
docker-compose up
```
For generating a request, use the parameters following the model of the parameters: 


```zsh
# $1=FILENAME $2=VERB $3=URI $4=STATUS $5=BODYFILE
./request_template.sh request_file.json GET /api/hello-world 200 response_file.json
```

The update is going to copy the files to the container and reload it: 


```zsh
./update
```

## Contributing
Pull requests are welcome. Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
