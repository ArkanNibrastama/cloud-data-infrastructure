## Build Cloud Function with Terraform

This repository contain how to build google cloud function using terraform.

## Run Locally 
- Clone the repository
    ```bash
    git clone https://github.com/ArkanNibrastama/cloud-data-infrastructure/tree/main/Cloud%20Function.git
    ```
- Install the dependencies if you want to try to run code on local computer
    ```bash
    pip install -r requirements.txt
    ```
- Fill the blank variable on variables.tf
    <br> example:
    ```bash
    variable "project_id" {
        default = "YOUR PROJECT ID"
    }
    ```
- Run terraform
    ```bash
    terraform init
    ```
    ```bash
    terraform plan
    ```
    ```bash
    terraform apply
    ```
