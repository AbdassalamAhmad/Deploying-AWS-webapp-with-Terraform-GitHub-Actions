# Deploying-AWS-3-tier-Webapp-with-Terraform-Docker-GitHub-Actions-CI-CD-Pipeline

## Project Structure
![Infrastructure](./assests/AWS-Three-Tier-Architecture.jpg)

## Project Description
- Dockerize a Flask app (Monty Hall Game) and push it to AWS Elastic Container Registry.
- Deploy AWS Infrastructure using terraform modules.
- Provision EC2 Instances and pull latest Docker image and run it.
- Finally: You will have a container running flask app on 2 EC2 Instances behind Application Load Balancer.


## Technologies Used in Detail: 
1. Terraform (IaC): To deploy AWS Infrastructure resources using Terraform modules.
2. AWS Resources:
	- VPC (2 Public Subnets, 4 Private Subnets, Elastic IP, Nat Gateway, Internet Gateway).
	- 3 EC2 Instances, and Application Load Balancer.
	- RDS, and Elasticache.
	- S3 and Dynamodb: to store state file and lock it.
	- Security Groups.
3. Docker: To dockerize my Flask application using a Dockerfile.
4. GitHub Actions (CI/CD): To do these Jobs on every git push command, also manually triggered:
	- Automate the Infrastructure building and destroying process.
	- Provision the EC2 Instances (Install and configure Docker).
	- Build, push docker image to AWS ECR, then pull and run docker container in the ec2 instance.

## To-Do List
- [ ] Provisoin EC2 Instances using Ansible.
- [ ] Send email to me using lambda once the terraform state file change.

## Resources and Note
1. [GitHub Action Tutorial by Nana.](https://www.youtube.com/watch?v=R8_veQiYBjI)
2. [GitHub Actions Docs.](https://docs.github.com/en/actions)
3. [AWS three-tier Architecture by Tech with Lucy.](https://www.youtube.com/watch?v=5RVT3BN9Iws)
4. [Project Idea.](https://www.youtube.com/watch?v=xIyDhaIfC1I)

>**Note**: I've build this project from many resources and couldn't memorize every source I got info from.
I hope you benefit from this project.
If you like this project, I appreciate you starring this repo.<br>
Finally, feel free to fork the content and contact me on my [LinkedIn account](https://www.linkedin.com/in/abdassalam-ahmad/) if you have any questions about this project.<br>


