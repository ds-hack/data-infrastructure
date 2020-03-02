FROM python:3.7.6-slim-buster
WORKDIR /usr/src/app
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r ./requirements.txt
COPY . .
CMD ["pytest", "--cov=./src/main", "./src/test"]