SHA="49c11d0ab74e4a1d534c8fde16875f12fb45303e"


docker build -t liaaron1/multi-client:latest -t liaaron1/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t liaaron1/multi-server:latest -t liaaron1/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t liaaron1/multi-worker:latest -t liaaron1/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push liaaron1/multi-client:latest
docker push liaaron1/multi-server:latest
docker push liaaron1/multi-worker:latest

docker push liaaron1/multi-client:$SHA
docker push liaaron1/multi-server:$SHA
docker push liaaron1/multi-worker:$SHA

kubectl create secret generic pgpassword --from-literal PGPASSWORD=password123

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=liaaron1/multi-server:$SHA
kubectl set image deployments/client-deployment client=liaaron1/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=liaaron1/multi-worker:$SHA
