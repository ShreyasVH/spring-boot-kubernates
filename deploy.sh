PID_FILE=spring-boot-portforward.pid
if [[ ! -f "$PID_FILE" ]]; then
  echo "Starting"
    
	kubectl apply -f pod.yaml
	kubectl wait --for=condition=Ready pod/spring-boot-kubernates --timeout=120s
	kubectl port-forward pod/spring-boot-kubernates ${PORT}:${CONTAINER_PORT} > portForward.log 2>&1 &

	PF_PID=$!
	echo $PF_PID > "$PID_FILE"

	echo $PF_PID
fi