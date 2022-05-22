#build stage
FROM python:3-alpine AS python-install
WORKDIR /usr/src/app
COPY ./app .
RUN pip install --no-cache-dir -r ./requirements.txt
ENTRYPOINT ["python3", "./run.py"]
LABEL\
    Name=comdockerdevenvironments\
    Version=0.0.1\
    org.opencontainers.image.authors="Kristianalberto@gmail.com"
EXPOSE 3000
