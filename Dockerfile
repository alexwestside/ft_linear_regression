FROM golang:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y vim && \
    apt-get install -y imagemagick && \
    apt-get clean

WORKDIR ft_linear_regression

RUN mkdir graphs

COPY bin/./ft_linear_regression_train bin/
COPY bin/./ft_linear_regression_predict bin/
COPY data/data.csv data/
COPY README.md .

ENTRYPOINT /bin/bash