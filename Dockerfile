FROM golang:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y vim && \
    apt-get install -y imagemagick && \
    apt-get clean

WORKDIR ft_linear_regression

RUN mkdir graphs

ADD ./bin/./ft_linear_regression_train ./bin/
ADD ./bin/./ft_linear_regression_predict ./bin/
ADD ./data/data.csv ./data/

ENTRYPOINT /bin/bash