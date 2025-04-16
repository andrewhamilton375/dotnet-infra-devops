# 🚀 dotnet-infra-devops

This project demonstrates a professional CI/CD pipeline for an ASP.NET Core web application using **GitHub Actions**, **Azure App Service**, and **Terraform** for Infrastructure as Code (IaC).

It simulates a production-ready deployment workflow designed to handle high-traffic applications with weekly deployments.

---

## 📦 Tech Stack

- **ASP.NET Core** (MVC Web App)
- **xUnit** (Unit Testing Framework)
- **GitHub Actions** (CI/CD Pipeline)
- **Azure App Service** (Cloud Hosting)
- **Terraform** (Infrastructure Provisioning)
- **Ubuntu** (Development Environment)

---

## 🛠️ Features

- ✅ Automated CI/CD pipeline with GitHub Actions
- ✅ Full unit testing integration using xUnit
- ✅ Deployment to Azure App Service with GitHub Secrets
- ✅ Publish-ready artifact with versioned output
- ✅ Terraform configuration for reproducible cloud infra

## 📁 Project Structure

- /MyAspNetApp → ASP.NET MVC web application
- /MyAspNetApp.Tests → xUnit test project 
- /.github/workflows → GitHub Actions workflow file 
- /main.tf → Terraform script for Azure App Service


## 🚀 Run Locally

Make sure you have .NET SDK installed:

cd MyAspNetApp
dotnet run