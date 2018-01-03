# Build
build:	
	docker build -t ts3:orange . 
	docker tag ts3:orange pingu/ts3:latest
	docker push pingu/orangeteamspeak:latest

# Start
run:
	docker run \
	-it \
	--rm \
	--name teamspeak3 \
	-p 9987:9987/udp -p 30033:30033 -p 10011:10011 \
	-v /srv/orangets3/logs:/ts3/teamspeak3-server_linux_amd64/logs \
	-v /srv/orangets3/files:/ts3/teamspeak3-server_linux_amd64/files \
	-v /srv/orangets3/ts3server.sqlitedb:/ts3/teamspeak3-server_linux_amd64/ts3server.sqlitedb  \
	pingu/ots3:latest
