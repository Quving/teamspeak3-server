# Build
build:	
	docker build -t ts3:orange . 
	docker tag ts3:orange pingu/ts3:latest
	docker push pingu/orangeteamspeak:latest

# Start
run:
	docker run \
	-it \
	--name teamspeak3 \
	--restart always \
	-d \
	-p 9988:9987/udp -p 30034:30033 -p 10012:10011 \
	-v /srv/orangets3/logs:/home/ts3/teamspeak3-server_linux_amd64/logs \
	-v /srv/orangets3/files:/home/ts3/teamspeak3-server_linux_amd64/files \
	-v /srv/orangets3/query_ip_blacklist.txt:/home/ts3/teamspeak3-server_linux_amd64/query_ip_blacklist.txt \
	-v /srv/orangets3/query_ip_whitelist.txt:/home/ts3/teamspeak3-server_linux_amd64/query_ip_whitelist.txt \
	-v /srv/orangets3/ts3server.ini:/home/ts3/teamspeak3-server_linux_amd64/ts3server.ini  \
	-v /srv/orangets3/ts3server.sqlitedb:/home/ts3/teamspeak3-server_linux_amd64/ts3server.sqlitedb  \
	pingu/orangeteamspeak:latest

