# My Cloud Native Monitoring App :computer:📊

Welcome to My Cloud Native Monitoring App! This project provides a web application for monitoring and managing cloud-native resources. It is built with Python, Flask, and Kubernetes.

## Description

The My Cloud Native Monitoring App allows users to monitor and manage various resources in their cloud environment. It provides features such as real-time metrics visualization, resource utilization tracking, and alerting. The app is designed to be scalable, efficient, and easy to deploy on Kubernetes clusters.

## Features

- Real-time metrics visualization
- Resource utilization tracking
- Alerting for critical events
- User-friendly web interface
- Easy deployment on Kubernetes clusters

## What I Did in This Project

In this project, I developed the My Cloud Native Monitoring App, an application for monitoring and managing cloud-native resources. Here's an overview of what I accomplished:

1. **Architecture Design:** I designed the architecture of the monitoring app, ensuring scalability, efficiency, and ease of deployment on Kubernetes clusters.

2. **Technology Stack:** I selected Python as the programming language and utilized Flask as the web framework for building the app. I also leveraged Kubernetes for container orchestration.

3. **Real-time Metrics Visualization:** I implemented a real-time metrics visualization feature that allows users to monitor key metrics such as CPU usage, memory utilization, and network traffic.

4. **Resource Utilization Tracking:** I developed functionality to track the resource utilization of cloud-native resources, enabling users to identify bottlenecks and optimize resource allocation.

5. **Alerting System:** I integrated an alerting system that notifies users of critical events or threshold breaches. Users can configure custom alerts based on their specific requirements.

6. **User-friendly Interface:** I focused on creating a user-friendly web interface that provides an intuitive experience for navigating and interacting with the monitoring app.

7. **Deployment Automation:** I automated the deployment process using Docker and Kubernetes. This ensures easy and consistent deployment across different environments.

8. **Documentation and Troubleshooting:** Throughout the project, I documented the installation and setup process, as well as any known issues and their solutions. This README file serves as a comprehensive guide for users.

I thoroughly enjoyed working on this project and applying my skills in cloud-native development, containerization, and monitoring. I hope that this app proves to be a valuable tool for monitoring and managing cloud resources in various scenarios.

If you have any questions or suggestions for further improvements, please feel free to reach out. Your feedback is greatly appreciated!

## Installation and Setup

To get started with My Cloud Native Monitoring App, follow the steps below:

### 1. Clone the repository:


git clone https://github.com/isurubimsara/cloud-native-monitoring-application.git
### 2. Navigate to the project directory:


cd my-cloud-native-monitoring-app
### 3. Install the necessary dependencies:


pip install -r requirements.txt
### 4. Configure your AWS credentials and region:

aws configure
### 5. Build your Docker image:

docker build -t my-cloud-native-monitoring-app .
### 6. Tag and push the Docker image to your repository:

docker tag my-cloud-native-monitoring-app:latest <your-repository-url>/my-cloud-native-monitoring-app:latest
docker push <your-repository-url>/my-cloud-native-monitoring-app:latest
  
### 7. Authenticate your Docker client to your repository:

aws ecr get-login-password --region <your-region> | docker login --username AWS --password-stdin <your-repository-url>
  
### 8. Deploy the application on Kubernetes:
Apply the deployment and service configurations provided in the repository to deploy the app on your Kubernetes cluster. Make sure the app is running on port 5001.

### 9. Access the My Cloud Native Monitoring App:
Use the appropriate URL or load balancer endpoint to access the app. If you are using a local Kubernetes cluster, visit http://localhost:5001 in your web browser.

## Known Issues and Troubleshooting
In this section, we will document any known issues and their solutions encountered during the development and deployment of My Cloud Native Monitoring App:

#### 1. **Issue:** Unable to authenticate with AWS ECR.
**Solution:** Make sure your AWS credentials and region are correctly configured. Additionally, ensure that you have the necessary IAM permissions to access ECR.

#### 2. **Issue:** Connection refused error when accessing Kubernetes cluster.
**Solution:** Verify that the Kubernetes cluster is up and running. Check if the kubeconfig is properly configured and the correct context is set.

#### 3. **Issue:** Docker build failure due to missing dependencies.
**Solution:** Double-check that all the required dependencies are installed and listed in the requirements.txt file. Update the dependencies if necessary.

#### 4. **Issue:** Deployment or service creation failure in Kubernetes.
**Solution:** Review the deployment.yaml and service.yaml files for any syntax errors or misconfigurations. Check if the Kubernetes cluster has sufficient resources available.


Please refer to the above for a list of issues and their respective solutions i had to deal with. If you encounter any issues not listed here, please reach out to us for support.

Remember to replace placeholders such as `<your-username>`, `<your-repository-url>`, and `<your-region>` with the appropriate values for your project.
