kubectl delete pod spring-boot-kubernates
kill -9 $(lsof -t -i:${PORT})