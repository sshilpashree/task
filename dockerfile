# syntax=docker/dockerfile:1

FROM ubuntu:22.04
COPY . /app
RUN apt-get update && apt-get install -y make
RUN make /app
CMD python /app/app.py
