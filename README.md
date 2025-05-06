

# FastAPI Project



##  Overview
A backend application developed using FastAPI, designed for deployment on AWS EC2. This project incorporates Docker for containerization and includes a bash script to automate the setup process, making it ideal for learning DevOps practices and backend development.

##  Features
+ FastAPI: High-performance Python web framework for building APIs.

+ Dockerized: Containerized application for consistent deployment across environments.

+ Automated Setup: Bash script to install dependencies, clone the repository, and deploy the application.

+ AWS EC2 Deployment: Easily deployable on AWS EC2 instances.

+ SQLite Database: Lightweight database for development and testing purposes.



##  Prerequisites
+ Python 3.8 or higher

+ Git

+ Docker

+ AWS EC2 instance (Amazon Linux 2 or similar)

## Deploy on AWS EC2

* Step 1: Connect your AWS EC2 instance via terminal
* Step 2: Run these following commands in your EC2 instance:
Create file `myscript.sh`: `touch myscript.sh`

Edit this file `vim myscript.sh`

Copy all [inside this file](https://github.com/croyce97/FastAPI_Project/blob/main/myscript.sh) to `myscript.sh`

Grant excecute permission: `chmod +x setup_fastapi.sh`

Execute the script: `./setup_fastapi.sh`

Open in browser at address: `http://<EC2_PUBLIC_IP>/docs` to see Swagger UI.
Make sure the security group has opened port 80 (or the port you use).
