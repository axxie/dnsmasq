docker rm -f dnsmasq
touch ${PWD}/logs/dnsmasq.log
docker run -d --name dnsmasq \
--network=host --cap-add=NET_ADMIN --cap-add=NET_RAW \
-p 53:53/tcp -p 53:53/udp \
--restart=always \
-v ${PWD}/config/dnsmasq.conf:/etc/dnsmasq.conf \
-v ${PWD}/config/hosts:/etc/hosts \
-v ${PWD}/config/ethers:/etc/ethers \
-v ${PWD}/logs/dnsmasq.log:/var/log/dnsmasq.log \
dnsmasq