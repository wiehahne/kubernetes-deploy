echo -ne "
...................................................................................................................................
                                    Redeploying Demo App Components
...................................................................................................................................
"\n\n

echo 1/6: Removing Travel App Frontend\n
kubectl delete -f 6_demoapp-frontend/deployment.yaml
kubectl delete -f 6_demoapp-frontend/service.yaml
kubectl delete -f 6_demoapp-frontend/ingress.yaml
echo Done\n\n

echo 2/6: Removing Microservice 1 (Summer)\n
kubectl delete -f 7_demoapp-app1-summer/deployment.yaml
kubectl delete -f 7_demoapp-app1-summer/service.yaml
kubectl delete -f 7_demoapp-app1-summer/ingress.yaml
echo Done\n\n

echo 3/6: Removing Microservice 2 (Winter)\n
kubectl delete -f 8_demoapp-app2-winter/deployment.yaml
kubectl delete -f 8_demoapp-app2-winter/service.yaml
kubectl delete -f 8_demoapp-app2-winter/ingress.yaml
echo Done\n\n

echo 4/6: Deploying Travel App Frontend\n
kubectl apply -f 6_demoapp-frontend/deployment.yaml
kubectl apply -f 6_demoapp-frontend/service.yaml
kubectl apply -f 6_demoapp-frontend/ingress.yaml
echo Done\n\n

echo 5/6: Deploying Microservice 1 (Summer)\n
kubectl apply -f 7_demoapp-app1-summer/deployment.yaml
kubectl apply -f 7_demoapp-app1-summer/service.yaml
kubectl apply -f 7_demoapp-app1-summer/ingress.yaml
echo Done\n\n

echo 6/6: Deploying Microservice 2 (Winter)\n
kubectl apply -f 8_demoapp-app2-winter/deployment.yaml
kubectl apply -f 8_demoapp-app2-winter/service.yaml
kubectl apply -f 8_demoapp-app2-winter/ingress.yaml
echo Done\n\n


echo Demo App redeployed successfully\n