# 


```
pipenv --python 3.9
```

```
pipenv install fastapi
pipenv install uvicorn
pipenv install aiofiles
```

To activate this project's virtualenv, run pipenv shell.
Alternatively, run a command inside the virtualenv with pipenv run.

```
pipenv shell
pipenv run
```

https://github.com/tiangolo/fastapi

## Run it

```
uvicorn main:app --reload
```


https://qiita.com/satto_sann/items/fcd3832a1fea2c607b85
https://qiita.com/kawasin73/items/3e58fc8a14af66ab7204

```
docker-compose up -d --build
```

```
docker images | grep api
```

open api

http://localhost:8000/docs


docker-compose build
docker run -it --rm -p 80:80 -e WORKER_PROCESSES=2 base_fastapi_app
