# Introduction 
This is a sample Spring Boot Application project with TODO feature. The main objective of this project to explore 
Azure Pipelines services by deploying sample TODO application on Azure VM. 

# Getting Started
1.	Software dependencies
   - Java 17
   - Maven 3.x
   - mysql database
# Build and Test
1. Local installation
   - Clone this repository
   - Run Maven build `mvn clean package`
   - Start the application from the ./target directory as `jar -jar todo-app-0.0.1.jar`
2. Local Testing
   - Get all TODOs - `http://localhost:9090/todos'

# VM deployment
## VM Preparation
1. Spin up a new Azure VM for app deployment
2. Install Java 17 on the VM
3. Install mysql database

## Setup self agent
1. Follow instruction [here](#https://learn.microsoft.com/en-us/azure/devops/pipelines/agents/pools-queues?view=azure-devops&tabs=yaml%2Cbrowser)

## Create service connection in dev azure portal
1. Create service connection for Azure VM. This is referenced in azure-pipeline.yml

## Run Azure pipeline
1. `azure-pipelines.yml` contains all the instructions and steps for Azure pipeline.
2. Run this pipeline

# Contribute
TODO: Explain how other users and developers can contribute to make your code better. 
