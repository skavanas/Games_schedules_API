# 🏈 NFL Game Notification System

This project is an **NFL Game Notification System** built with **Flask**, designed to fetch and serve real-time NFL game schedules using **SerpAPI**, and deployed with modern AWS tools. The system is containerized with **Docker**, hosted on **AWS ECS**, with container images stored in **AWS ECR**, and exposed via **AWS API Gateway**.

---

## 📖 **Project Overview**

<p align="center">
  <img src="https://github.com/user-attachments/assets/your-nfl-architecture-diagram-1" width="70%" alt="Architecture Diagram">
</p>

---

## ✅ **Steps**

1. **API Integration:**  
   - The system uses **SerpAPI** to fetch the latest NFL game schedule by querying Google search results.

2. **Data Handling:**  
   - A **Flask** app formats and returns the NFL game data in a clean, user-friendly JSON structure.

3. **Containerization:**  
   - The application is dockerized to ensure consistency across environments.

4. **Deployment:**  
   - Deployed on **AWS ECS** with the image stored in **AWS ECR**.
   - **AWS API Gateway** is used to expose the Flask API publicly.

---

## 🚀 **Technologies Used**

- **Flask** – Lightweight Python framework to build the REST API  
- **SerpAPI** – For fetching live NFL schedule data  
- **Docker** – For containerizing the application  
- **AWS ECS (Elastic Container Service)** – To run Docker containers  
- **AWS ECR (Elastic Container Registry)** – To store Docker images  
- **AWS API Gateway** – To expose the Flask API to the internet  

---

## 🎯 **Use Cases**

- Retrieve real-time NFL schedule via a simple HTTP request  
- Easily scalable architecture using AWS ECS and API Gateway  
- Portable and consistent deployment with Docker  

---

## 🏁 **How to Get Started**

1. **Clone the repository**
```
git clone https://github.com/skavanas/nfl-game-notification.git
```
- Set up environment variables
Add your SerpAPI key to your environment:
```
export SPORTS_API_KEY="your_serpapi_key"
```
- Build the Docker image
```
docker build -t nfl-schedule-api .
```
- Push to ECR

Authenticate Docker to your ECR registry

Tag and push the image:
```
docker tag nfl-schedule-api:latest your-aws-account-id.dkr.ecr.region.amazonaws.com/nfl-schedule-api
docker push your-aws-account-id.dkr.ecr.region.amazonaws.com/nfl-schedule-api
```
- Deploy on ECS
Use an ECS Fargate or EC2 cluster
Configure the service and task definition to use your pushed image
Connect API Gateway
Create a new API
Link it to your ECS service through a VPC Link or public endpoint

## 🤝 ** Contributing **

We welcome contributions! Feel free to:

- Open issues

- Submit pull requests

- Suggest enhancements or features




