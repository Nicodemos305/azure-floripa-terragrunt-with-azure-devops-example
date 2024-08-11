# azure-floripa-terragrunt-with-azure-devops-example

# Foundation GitOps Project

## Overview

This project is designed to implement a GitOps workflow for managing cloud infrastructure in Azure. The repository is structured to support multiple environments, each represented by a separate branch. When a commit is merged into any of these branches, a pipeline is triggered to deploy the corresponding resources in Azure using Terraform and Terragrunt.

## Technologies Used

- **Terraform**: Infrastructure as Code (IaC) tool to define and provision resources in Azure.
- **Terragrunt**: A thin wrapper for Terraform that provides extra tools for keeping your configurations DRY, managing remote state, and locking deployments.
- **Azure Provider**: The Terraform provider that interacts with Azure to create and manage cloud resources.
- **Azure DevOps**: CI/CD platform used to manage the pipelines that deploy infrastructure changes.

## Repository Structure

- **Main Branches**: Each branch represents a different environment (e.g., `development`, `staging`, `production`).
- **Modules**: Shared Terraform modules are stored in the `modules` directory to ensure reusability across environments.
- **Environments**: Each environment has its own configuration files stored in separate directories, managed by Terragrunt.

## GitOps Workflow

1. **Branch Structure**: 
    - `development` for dev environment.
    - `staging` for staging environment.
    - `production` for the production environment.

2. **Branching Strategy**:
    - New changes are introduced through feature branches.
    - Feature branches are reviewed and merged into the respective environment branches (`development`, `staging`, `production`).

3. **Pipeline Triggers**:
    - A merge into any environment branch triggers the corresponding Azure DevOps pipeline.
    - The pipeline executes Terraform/Terragrunt to apply the infrastructure changes to the target Azure environment.

## Setting Up the Project

### Prerequisites

- Azure subscription with sufficient permissions.
- Azure DevOps account with pipeline permissions.
- Terraform and Terragrunt installed locally for development and testing.

### Clone the Repository

```bash
git clone https://github.com/Nicodemos305/azure-floripa-terragrunt-with-azure-devops-example.git
cd foundation
