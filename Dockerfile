FROM golang:latest

CMD mkdir graphs
CMD mkdir dataset

ADD ../ft_linear_regression_train/./ft_linear_regression_train ./
ADD ../ft_linear_regression_predict/./ft_linear_regression_predict ./
ADD ../ft_linear_regression_train/dataset/data.csv ./dataset/

ENTRYPOINT /bin/bash