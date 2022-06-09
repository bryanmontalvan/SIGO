docker-build:
	docker build -t sigo:1.0.0 .
docker-dev:
	docker build --target dev . -t go
	docker run -it -v ${PWD}:/sigo go sh
clear-file:
	: > store/storedcity.txt
test-get:
	go build
	./sigo get -city Boston