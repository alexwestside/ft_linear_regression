FROM golang:latest

RUN apt-get update & apt-get install vim

WORKDIR ft_linear_regression

CMD mkdir graphs
CMD mkdir dataset
CMD mkdir bin

ADD ./bin/./ft_linear_regression_train ./bin/
ADD ./bin/./ft_linear_regression_predict ./bin/
ADD ./data/data.csv ./data/

ENTRYPOINT /bin/bash