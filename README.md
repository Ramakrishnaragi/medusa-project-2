# Medusa Open Source Headless Commerce Platform Backend Service
This repository contains Terraform configurations for provisioning AWS infrastructure to deploy a Medusa backend headless service. 
Medusa is an open-source headless commerce platform that provides a flexible and customizable backend for e-commerce applications.
This project sets up the necessary AWS resources, including VPC, ECS clusters, RDS instances and load balancers, to efficiently run and manage the Medusa backend service.

# Terraform Provisioning for AWS ECS with GitHub Actions CD

## Overview

This project sets up an AWS infrastructure to deploy a Medusa backend service using Terraform and GitHub Actions for Continuous Deployment (CD). Medusa is an open-source headless commerce platform designed for building scalable and customizable e-commerce applications. This setup provisions necessary AWS resources such as ECS clusters, RDS instances, and load balancers to run the Medusa backend service efficiently.

## Project Structure

- **`variables.tf`**: Contains Terraform variables used throughout the configuration.
- **`terraform.tfvars`**: Defines values for the variables declared in `variables.tf`.
- **`outputs.tf`**: Specifies the outputs of the Terraform configuration, such as the load balancer DNS name.
- **`rds.tf`**: Configures the RDS instance for the application database.
- **`ecs.tf`**: Defines the ECS cluster, task definitions, and services.
- **`vpc.tf`**: Sets up the VPC, subnets, and internet gateway.
- **`iam.tf`**: Contains IAM roles and policies required for ECS and other AWS services.
- **`provider.tf`**: Configures the AWS provider settings.
- **`.github/workflows/deploy.yml`**: Defines the GitHub Actions workflow for deploying changes.

## Prerequisites

- **Terraform**: Ensure Terraform is installed with latest version on your local machine.
- **AWS CLI**: Configure your AWS CLI with appropriate credentials.
- **GitHub Repository**: Create a repository on GitHub and push your Terraform code.
- **Secret and Variables**: Add your AWS Credentials (Access key and Secret Access Key) in repo settings.

## Setup Instructions

1. Clone the Repository
Clone the repository containing the Terraform configurations:

git clone <your-repository-url>
cd <your-repository-directory>

2. Push to GitHub
Make the necessary changes for custom config and push the code to GitHub.

3. Configure routing rules
In order to access the service, open respective ports in inbound(80, 9000) and outbound rules(*) and configure routing table for Internet Gateway to listen in VPC.

4. Access the Service
Use Load Balancer DNS with port (http-80) to access or use the port according to custom config.

  
