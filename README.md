# **ADX DOCKER**

This repository encompases all the necessary files to setup and run the necessary workers for the aggregate data exchange services (ADX).

## **Dependencies**

- **NodeJS > 10.12**
- **Mysql 5.7**
- **RabbitMQ 3**
- **Docker 18.09**
- **OpenHIM **

## **Installation**

### **Step 1 - Clone the project**

Clone the repository into a local directory by using the command below.

```bash
#clone the project
git clone https://github.com/Kuunika/adx-docker

#navigate to the project root directory
cd adx-docker
```



### **Step 2 - Environment variables**

Create .containers.env file from the containers.env.example file

```bash
cp .containers.env.example .containers.env
```

Modify the .containers.env file to reflect your required environment

```bash
cp .env.example .env
```

Modify the .env file to reflect your required environment 



### **Step 3 - Start the workers**

```bash
docker-compose up -d
```

