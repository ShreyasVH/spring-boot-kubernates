kubectl apply -f pod.yaml
kubectl wait --for=condition=Ready pod/spring-boot-kubernates --timeout=120s
kubectl port-forward pod/spring-boot-kubernates ${PORT}:${CONTAINER_PORT} > portForward.log 2>&1 &