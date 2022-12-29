apiVersion: apps/v1
kind: Deployment
metadata:
  name: tomcat-java-deployment
spec:
  replicas: 1
  selector:
    matchLabels:
      app: tomcat-java-deployment
  template:
    metadata:
      labels:
        app: tomcat-java-deployment
    spec:
      containers:
      - name: tomcat-java-deployment
        image: us-central1-docker.pkg.dev/valued-geode-345108/myrepo/newimg:COMMIT_SHA
        ports:
        - containerPort: 8080
        resources:
          # You must specify requests for CPU to autoscale
          # based on CPU utilization
          limits:
            cpu: 500m
          requests:
            cpu: 200m
