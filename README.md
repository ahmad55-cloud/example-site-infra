# AWS Terraform Infrastructure for ExampleSite

## Overview

This repository contains Terraform scripts to provision the infrastructure for **ExampleSite** on AWS. The infrastructure supports two environments: **Production** and **Staging**, each with isolated VPCs. The infrastructure is designed for **high availability (99.99%)**, **secure video traffic**, **fast content delivery**, **geographical redundancy**, and **cost optimization**.

## Components

The Terraform code will provision the following AWS resources:
- **VPC**: Separate VPCs for production and staging environments.
- **Subnets**: Public and private subnets across multiple Availability Zones.
- **Internet Gateway**: Provides public internet access to resources within the VPC.
- **Security Groups**: Control access to the front-end, back-end, and database layers.
- **EC2 Instances**: Auto-scaling web servers.
- **RDS MySQL**: A multi-AZ database for the back-end API.
- **S3 Buckets**: For media storage, integrated with **CloudFront** for fast, secure content delivery.
- **CloudFront CDN**: For low-latency delivery of static content (SPAs) and video.
- **Lambda**: Optional serverless functionality for handling automation tasks.
- **CloudWatch** and **CloudTrail**: For monitoring and activity logging.

## Prerequisites

Before deploying the infrastructure, ensure you have the following set up:
1. **AWS Account** with sufficient permissions (EC2, S3, RDS, IAM, CloudFront, etc.).
2. **AWS CLI** configured with appropriate access keys.
   ```bash
   aws configure
