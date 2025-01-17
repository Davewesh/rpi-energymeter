FROM python:3.10.2-alpine

LABEL Maintainer="SlothCroissant"

WORKDIR /app

COPY src/* .
RUN apk add --no-cache gcc
RUN apk --update add --virtual build-dependencies libffi-dev build-base 
RUN pip install -r requirements.txt 
RUN apk del build-dependencies

CMD [ "python3",  "main.py"]
