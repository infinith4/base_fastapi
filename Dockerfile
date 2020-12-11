FROM python:3.9-alpine

WORKDIR /app

COPY Pipfile .
# コンテナ内で必要なパッケージをインストール
RUN apk add --no-cache build-base \
 && pipenv install --no-cache-dir --trusted-host pypi.python.org \
 && apk del build-base

COPY app/main.py .
EXPOSE 8000
# FastAPIを8000ポートで待機
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]