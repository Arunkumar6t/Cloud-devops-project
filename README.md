# Cloud-devops-project
Built a fully automated CI/CD pipeline for a containerized web application using AWS services and DevOps tools. This project demonstrates modern DevOps practices like version control, infrastructure as code (IaC), containerization, and continuous deployment.
# Cloud DevOps Java Project

This is a simple Java (Spring Boot) web application demonstrating DevOps practices:

- Spring Boot REST API
- Dockerized App
- GitHub Actions CI/CD
- Infrastructure with Terraform (EC2 on AWS)

### Features:
- On push to `main`, CI builds app & Docker image
- Image is pushed to DockerHub
- Terraform deploys app on AWS EC2

---

To run locally:
```bash
cd app
mvn spring-boot:run
```

---

To deploy on AWS:
```bash
cd terraform
terraform init
terraform apply
```

Add your AWS credentials and DockerHub secrets in GitHub before running CI/CD.
