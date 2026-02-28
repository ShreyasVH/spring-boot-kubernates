PID_FILE=spring-boot-portforward.pid
if [[ -f "$PID_FILE" ]]; then
    echo "Stopping"

	kill -9 $(cat ${PID_FILE})
	rm ${PID_FILE}

	kubectl delete pod spring-boot-kubernates
fi