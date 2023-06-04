ip link add macvlan1 link eth0 type macvlan mode bridge # создаем адаптер тип bridge
ip address add dev macvlan1 192.168.28.10/24 # добавляем ему ip
ip link set macvlan1 up # включаем 

ip route add 192.168.7.0/24 via 192.168.28.1 # маршрут к вм С через вм В

docker-compose up -d