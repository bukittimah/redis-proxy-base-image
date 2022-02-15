FROM debian:buster as build
RUN apt-get update && apt-get purge -y --auto-remove && apt-get install -y git make gcc libasan5