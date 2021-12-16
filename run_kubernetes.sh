# Step 1:
# This is your Docker ID/path
#alias kubectl="minikube kubectl --"

dockerpath=temmysam/udacity:latest

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl run NAME --image=DOCKER_IMAGE --port=YOUR_PORT
kubectl run udacity --image=$dockerpath


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/udacity 8000:80
