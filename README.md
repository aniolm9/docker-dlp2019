# docker-dlp2019
Fitxers de la xerrada "Introducció a Docker" del DLP 2019.

### Construir una imatge
```bash
docker build --tag=dlp2019 .
```

### Arrancar un contenidor
```bash
docker run -it -v $(pwd):/usr/local/go/src/github.com/aniolm9/docker-dlp2019 dlp2019
```

### Aturar i engegar un contenidor
```bash
docker stop <container_id>
docker start -a <container_id>
```
