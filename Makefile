# Targets
all: build push deploy

build:
	docker build -t thetoriqul/flask_app .

push:
	docker push thetoriqul/flask_app

deploy:
	kubectl apply -f deployment.yaml --namespace default

clean:
	kubectl delete -f deployment.yaml --namespace default

.PHONY: all build push deploy clean