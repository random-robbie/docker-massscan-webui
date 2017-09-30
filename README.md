# docker-massscan-webui
Masscan web gui

```
docker-compose-up -d 
```

change ab382de9a0a3 to your container ID.

found via docker ps -a


```
docker cp scan.xml ab382de9a0a3:/var/www/html/scan.xml
```

```
docker exec -it docker ab382de9a0a3 bash
```

```
php import.php scan.xml
```

Runs it's own mysql server and runs on port 91
that can be changed via the docker-compose.yml file

