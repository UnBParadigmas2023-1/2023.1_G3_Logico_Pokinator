build: clean
	docker build -t pokinator-img:latest --force-rm .

run: clean-container
	docker run -it -v $(shell pwd)/app:/app --name pokinator pokinator-img:latest swipl --quiet /app/main.pl

clean: clean-container
	-docker image rm pokinator-img:latest

clean-container:
	-docker rm pokinator
