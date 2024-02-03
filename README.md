# task-manager-fask-application
task-manager-fask-application for inspekt-labs 


                  Task Manager Application

This is a simple task manager application built with Flask. It allows users to perform CRUD (Create, Read, Update, Delete) operations on tasks.
Features

    Create a new task
    Read existing tasks
    Update existing tasks
    Delete tasks

Setup

Clone the repository:

   git clone https://github.com/yagvendra/task-manager-fask-application.git

Navigate to the project directory:

   cd task-manager-fask-application

Install dependencies:

pip freeze > requirements.txt
pip install -r requirements.txt

Set up the database:

flask db init
flask db migrate
flask db upgrade

Start the Flask development server:

python3 app.py

The application will be accessible at http://localhost:5000 or http://127.0.0.1:5000/

API Endpoints

    GET /tasks: Get all tasks
    POST /tasks: Create a new task
    GET /tasks/<task_id>: Get a specific task
    PUT /tasks/<task_id>: Update a task
    DELETE /tasks/<task_id>: Delete a task

    

Docker Setup

To Dockerize the application, follow these steps:

Build the Docker image:

docker build -t task-manager-fask-application:latest .

Run the Docker container:

docker run -d -p 8012:8012 task-manager-fask-application:latest

    The application will be accessible at http://localhost:8012.


Deployment on AWS EC2

To deploy the Dockerized application on an AWS EC2 instance, follow these steps:

SSH into the EC2 instance:

ssh -i devops-vm.pem username@ec2-instance-ip

Copy the Docker image to the EC2 instance:

scp -i devops-vm.pem path/to/your/docker/image username@ec2-instance-ip:/home/username/

SSH into the EC2 instance and load the Docker image:

ssh -i devops-vm.pem username@ec2-instance-ip
docker load -i task-manager-fask-application

Run the Docker container on the EC2 instance:

docker run -d -p 8012:8012 task-manager-fask-application

The application will be accessible at http://ec2-instance-ip:8012.

Contact

If you have any questions or need further assistance, feel free to contact:

Yagvendra Pal Singh
yagvendrathakur111@gmail.com


