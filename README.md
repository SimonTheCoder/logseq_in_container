This is a docker tool for running logseq in a container with noVNC support.
With this tool, we can build a logseq API server that can access server local filesystem by map volumes to docker container.

## clone or download this repo
Don't forget to cd to the repo dir.
## build docker image
```bash
./docker_build.sh
```
## download the logseq app
* from https://github.com/logseq/logseq/releases download the latest Logseq-linux-x64-****.zip.
* unzip it to ./Logseq-linux-x64 or where ever you want.

## start container
before starting the container, you can modify the `./start_logseq_in_docker.sh` file.
* modify these vars to set the resolution.
```bash
DISPLAY_WIDTH=1920
DISPLAY_HEIGHT=1080
```
* modify this map to fit your logseq downloaded location.
```bash
    -v $(pwd)/Logseq-linux-x64:/Logseq-linux-x64 \
```
* modify this line to map your note data to the container.
```bash
    -v /mnt/Data500G/:/note_data \
```
* to change the listening port, modify these lines.
```bash
    -p 12314:8080 \
    -p 12315:12315 \
```
then start the container.
```bash
./start_logseq_in_docker.sh
```
## acess
* VNC: http://127.0.0.1:12314
* API Server: http://127.0.0.1:12315 
  * to access the API Server, you need to set it up using VNC in the logseq setting page first.

# Thanks
Based on this great project: [docker-novnc](https://github.com/theasp/docker-novnc) !

