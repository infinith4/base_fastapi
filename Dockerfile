FROM python:3.9-alpine

ENV WORKDIR /app/
WORKDIR ${WORKDIR}

COPY Pipfile Pipfile.lock ${WORKDIR}

# コンテナ内で必要なパッケージをインストール
RUN pip install pipenv --no-cache-dir && \
    pipenv install --system --deploy && \
    pip uninstall -y pipenv virtualenv-clone virtualenv

COPY app/main.py .
EXPOSE 8000
# FastAPIを8000ポートで待機
CMD ["uvicorn", "main:app", "--reload", "--host", "0.0.0.0", "--port", "8000"]