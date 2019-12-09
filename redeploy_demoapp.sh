echo -ne "
...................................................................................................................................
                                    Redeploying Demo App Components
...................................................................................................................................
\n\n"

echo -ne "1/6: Removing Travel App Frontend\n"
kubectl delete -f 6_demoapp-frontend/deployment.yaml
echo -ne "Done\n\n"

echo -ne "2/6: Removing Microservice 1 (Summer)\n"
kubectl delete -f 7_demoapp-app1-summer/deployment.yaml
echo -ne "Done\n\n"

echo -ne "3/6: Removing Microservice 2 (Winter)\n"
kubectl delete -f 8_demoapp-app2-winter/deployment.yaml
echo -ne "Done\n\n"

echo -ne "4/6: Deploying Travel App Frontend\n"
kubectl apply -f 6_demoapp-frontend/deployment.yaml
echo -ne "Done\n\n"

echo -ne "5/6: Deploying Microservice 1 (Summer)\n"
kubectl apply -f 7_demoapp-app1-summer/deployment.yaml
echo -ne "Done\n\n"

echo -ne "6/6: Deploying Microservice 2 (Winter)\n"
kubectl apply -f 8_demoapp-app2-winter/deployment.yaml
echo -ne "Done\n\n"


echo -ne "Demo App redeployed successfully\n"