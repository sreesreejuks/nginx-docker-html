# Nginx Kubernetes Welcome Page

This project sets up an **Nginx web server** inside a Docker container, serving a simple **Kubernetes welcome page** with a health check endpoint.

## 📌 Features
- **Custom Nginx Configuration**: Uses a `default.conf` file to set up a web server on port **8080**.
- **Static Web Page**: Displays a welcome message with a link to Kubernetes.
- **Health Check Endpoint**: Provides a `/health` endpoint to check server status.
- **Lightweight Image**: Uses the **`nginx:alpine`** base image for efficiency.

## 🛠️ Setup & Installation

### 1️⃣ Build the Docker Image
```sh
docker build -t nginx-k8s-welcome .
```

### 2️⃣ Run the Container
```sh
docker run -d -p 8080:8080 --name nginx-container nginx-k8s-welcome
```

### 3️⃣ Access the Web Page
Open your browser and visit: http://localhost:8080

### 4️⃣ Check Health Status
* Run the following command:
    ```sh
    curl http://localhost:8080/health
    ```

 * Expected output:

    ```plain
    OK, I'm running.
    ```

📂 Project Structure
```plain
├── Dockerfile
├── default.conf        # Nginx configuration
├── index.html          # Welcome page
├── health              # Health check file
└── README.md           # Project documentation
```

🛑 Stopping & Removing the Container
```sh
docker stop nginx-container && docker rm nginx-container
```
📝 Notes 

1. Ensure that port 8080 is free before running the container.\
2. Modify index.html for custom content. \
3. Use docker logs nginx-container for troubleshooting.