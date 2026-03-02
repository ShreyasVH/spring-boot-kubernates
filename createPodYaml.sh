echo "apiVersion: v1
kind: Pod
metadata:
  name: spring-boot-kubernates
  labels:
    role: webapp
spec:
  containers:
    - name: web
      image: shreyasvh/spring-boot-docker:latest
      readinessProbe:
        httpGet:
          path: /api?input=abc
          port: ${CONTAINER_PORT}
        initialDelaySeconds: 5
        periodSeconds: 2
        timeoutSeconds: 1
        failureThreshold: 60" > pod.yaml