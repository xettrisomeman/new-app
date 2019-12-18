FROM python:3-alpine 

LABEL maintainer="someman budhathoki"

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt


COPY ./app /app

RUN adduser -D user
USER user

