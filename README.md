# 🚀 AWS DevOps CI/CD Pipeline (Terraform + Jenkins + Docker)

**Tech Stack:** AWS | Terraform | Jenkins | Docker | Linux | GitHub  

---

## 📌 Project Overview

This project demonstrates a **complete DevOps pipeline**:

- **Terraform:** Infrastructure as Code  
- **AWS EC2:** Compute platform  
- **Jenkins:** CI/CD automation  
- **Docker:** Containerized deployment  
- **GitHub:** Source control  

The pipeline automates **build → test → deploy** of a sample application on AWS EC2.

---

## 🏗️ Architecture


GitHub Repository
│
▼
Jenkins Pipeline
┌───────────────┐
│ Build Stage │ → Docker Image
│ Test Stage │ → Automated Tests
│ Deploy Stage │ → EC2 Deployment
└───────────────┘
│
▼
AWS EC2 Instance (Dockerized App)


👉 Add a real diagram in: `architecture/diagram.png`

---

## ⚙️ Features

- Fully automated infrastructure with Terraform  
- Jenkins pipeline for CI/CD automation  
- Dockerized application deployment  
- Security groups configured via IaC  
- Scalable cloud architecture on AWS  

---

## 🚀 Deployment Steps

### 1. Terraform Infrastructure

```bash
terraform init
terraform apply
2. Start Jenkins
Access Jenkins:
http://<EC2_PUBLIC_IP>:8080
Get unlock password:
docker exec -it <container_id> cat /var/jenkins_home/secrets/initialAdminPassword
Run pipeline to execute CI/CD flow
3. Docker Deployment

Jenkins pipeline will:

Build Docker image
Run container on EC2
Expose application port
📝 Lessons Learned
Terraform state locking can block execution if not handled properly
EC2 security groups must allow required ports (22, 8080, 80)
Jenkins inside Docker requires Docker socket mount (/var/run/docker.sock)
GitHub no longer supports password authentication → use PAT tokens
Terraform provider binaries must be excluded using .gitignore
Large files (>100MB) will break GitHub pushes
🛠️ Badges






📌 Future Improvements
Add GitHub Actions CI/CD
Deploy using Kubernetes (EKS)
Add HTTPS using Nginx reverse proxy
Add monitoring with Prometheus + Grafana
