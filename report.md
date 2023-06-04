# Отчет
## саздание скриптов для docker
настроим конфиг файл докера

![image](https://github.com/celjon/DockerPractice/assets/134550766/d61ee517-2bb6-4945-b254-7a7ca837448c)

с помощью терминала запускаем и пушим:

![image](https://github.com/celjon/DockerPractice/assets/134550766/57d62d14-f1ff-42a9-babc-4a94cebe2b75)
![image](https://github.com/celjon/DockerPractice/assets/134550766/3ae451a0-4098-40a9-b8aa-74b1f994dc71)
![image](https://github.com/celjon/DockerPractice/assets/134550766/bf4de6b4-6aa1-4bf1-b82e-7629e6842e5d)

формируем конфиг докер-компосе:

![image](https://github.com/celjon/DockerPractice/assets/134550766/4be2ef04-0cef-42de-9c55-e9b35570e4ba)

## проверяем работает ли?
с помощью комнады:

$ docker run -v $PWD/mosquitto:/mosquitto/config -p 1883:1883 --name broker --rm eclipse-mosquitto
запускаем контейнер с брокером c помощью команды:

$ docker run -e SIM_HOST=192.168.0.114 -e SIM_TYPE=temperature --name temperature celjon/sensor-sim
и видим:

![image](https://github.com/celjon/DockerPractice/assets/134550766/f6352f1f-8058-4e7c-b8ce-88f68f34547b)

все работает корректно
# автоматизация
немного редактируем конфиги виртуалок с предыдущего таска, запускаем плей вис докер и закачивем на каждую вм клон репрозитория с помощью команды

$ git clone -b develop https://github.com/celjon/DockerPractice.git
## client
запускам скрипт

![image](https://github.com/celjon/DockerPractice/assets/134550766/cdd0a32f-5966-45b1-b5b3-6c01cc15acf4)

## gateway
запускаем скрипт

![image](https://github.com/celjon/DockerPractice/assets/134550766/4fcc37eb-98ff-46a0-a1e6-99df917e9457)

## server
скрипт запускаем

![image](https://github.com/celjon/DockerPractice/assets/134550766/3898f1f7-f4f9-4cd4-b287-222d5e0570c0)

дальше идем в настройки базы данных grafana и настраиваем графики
результат:

![image](https://github.com/celjon/DockerPractice/assets/134550766/a11b53db-8d3f-4f9b-9b60-c0d51afbedba)
