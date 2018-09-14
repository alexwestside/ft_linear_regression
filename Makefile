
MAKETRAINE=../ft_linear_regression_train
MAKEPREDICT=../ft_linear_regression_predict

DOCKER=docker
DOCKERBUILD=$(DOCKER) build
DOCKERRUN=$(DOCKER) run
DOCKERPUSH=$(DOCKER) push

DEP=dep ensure

all: build

build:
	@echo "Build Train and Predict services..."
	cd $(MAKETRAINE); make all

docker-build:
	@echo "Docker build service..."
	$(DOCKERBUILD) --no-cache -t $(BIN) .

run:
	@echo "Docker run service..."
	$(DOCKERRUN) \
	--rm \
	-dt \
	-p 8001:8001 \
	--name=$(BIN) \
	$(BIN)

clean:
	@echo "Clean"
	docker rmi $(docker images -q)
	docker rm $(docker ps -qa -f status=exited)