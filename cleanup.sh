echo
echo Remove Injector and App Mesh Controller components
echo

kubectl delete -f 3_add_crds/virtual-service-definition.yaml
kubectl delete -f 3_add_crds/virtual-node-definition.yaml
kubectl delete -f 3_add_crds/mesh-definition.yaml
kubectl delete -f 3_add_crds/controller-deployment.yaml

kubectl delete secret aws-app-mesh-inject -nappmesh-inject
kubectl delete -f 2_create_injector/inject.yaml

echo
echo Remove k8s DJ App NS, Deployments, and Services
echo

kubectl delete deployment -nprod travel
kubectl delete deployment -nprod winter-v1
kubectl delete deployment -nprod winter-v2
kubectl delete deployment -nprod summer-v1
kubectl delete deployment -nprod summer-v2

kubectl delete service -nprod travel
kubectl delete service -nprod winter-v1
kubectl delete service -nprod winter-v1
kubectl delete service -nprod winter
kubectl delete service -nprod summer-v1
kubectl delete service -nprod summer-v2
kubectl delete service -nprod summer

kubectl delete ns prod
