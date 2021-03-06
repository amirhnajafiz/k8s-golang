# run our golang application without building it
go-run:
	go run main.go
# build our golang application
go-build:
	go build -o /main
# docker build of our application
docker-build:
	docker build . -f ./build/Dockerfile -t amirhossein21/k8s-golang
# docker push to our docker registery
docker-push:
	docker push amirhossein21/k8s-golang
# making kubernetes pod
kube-pod-build:
	kubectl create -f ./deploy/k8s-golang.yaml
