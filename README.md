# Tags

- `1.0.3`, `latest` [*(1.0.3/Dockerfile)*](https://github.com/pacroy/wikijs-docker/blob/master/Dockerfile)

# References

- [Wiki.js.org](https://wiki.js.org/)
- [requarks/wiki image](https://hub.docker.com/r/requarks/wiki/)

# Example Use

## 1. Create a New Network

```
$ docker network create wikijs
```

## 2. Create a MongoDB

```
$ docker run -d --name wikijs-mongo --network=wikijs \
  -v wikijs-configdb:/data/configdb \
  -v wikijs-datadb:/data/db \
  mongo
```

## 3. Create a Wikijs

```
$ docker run -d --name wikijs --network=wikijs \
  -e TITLE='Wiki' \
  -e HOST='http://localhost' \
  -e PORT=3000 \
  -e MONGO_HOST=wikijs-mongo \
  -e GIT_URL=https://github.com/yourid/yourrepo \
  -e WIKI_ADMIN_EMAIL=youremail@domain.com \
  -v /path/to/ssh:/var/wiki/keys \
  pacroy/wikijs
```
