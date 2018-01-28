# teamspeak3-server
This repository provides scripts to host your own [teamspeak3 server](http://www.teamspeak.com/en/) using [docker](https://www.docker.com/what-docker).

![alt text](https://www.river-styx.de/images/TSLogo.gif.png)

## Installation (built by yourself)
The teamspeak3-server's default ports are:
- 9987/udp
- 30033
- 10011

**Build the docker image**
``` $ docker build -t teamspeak3-server:latest . ```

**Run the container**
``` 
$ docker run -d -v /path/to/ts3-files:/ts3/teamspeak3-server_linux_amd64/files  \
    -v /path/to/ts3-logs:/ts3/teamspeak3-server_linux_amd64/logs \
    -v /path/to/ts3-ts3server.sqlitedb:/ts3/teamspeak3-server_linux_amd64/ts3server.sqlitedb \
    -p 9987:9987/udp -p 30033:30033 -p 10011:10011 \
    --name teamspeak3-server teamspeak3-server:latest
```
 
**Check if your teamspeak client can connect to your server**


### Enjoy!
