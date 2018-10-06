
BINTRAINE=ft_linear_regression_train
BINPREDICT=ft_linear_regression_predict

NAME=ft_linear_regression
MAKETRAINE=../ft_linear_regression_train
MAKEPREDICT=../ft_linear_regression_predict

DOCKER=docker
DOCKERBUILD=$(DOCKER) build
DOCKERRUN=$(DOCKER) run
DOCKERPUSH=$(DOCKER) push

DEP=dep ensure

all: build docker-build

build:
	@echo "Build Train and Predict services..."
	mkdir bin
	mkdir graphs
	cd $(MAKETRAINE); make all
	cd $(MAKEPREDICT); make all


docker-build:
	@echo "Docker build service..."
	$(DOCKERBUILD) --no-cache -t $(NAME) .

run:
	@echo "Docker run service..."
	$(DOCKERRUN) \
	--rm \
	-it \
	-v $(PWD)/graphs:/go/ft_linear_regression/graphs \
	--name=$(NAME) \
	$(NAME)

clean:
	@echo "Clean"
	rm -rf ./bin
	rm -rf ./graphs

re: clean all
