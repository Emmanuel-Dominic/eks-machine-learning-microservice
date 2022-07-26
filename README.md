# eks-machine-learning-microservice

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Emmanuel-Dominic/eks-machine-learning-microservice/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Emmanuel-Dominic/eks-machine-learning-microservice/tree/main)

## A summary of the project

This is a Machine Learning Microservice API project with a pre-trained `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on.

- Some of the screenshots are listed in the files folder.

### Setup Project Environment

* Clone the ptoject repo.
```
$ git clone git@github.com:Emmanuel-Dominic/DevOps_Microservices.git
```

* Change to the project directory.
```
$ cd project-ml-microservice-kubernetes
```

* Create a virtualenv with Python 3.7 and activate it.
```
$ python3.7 -m venv ~/.devops && python3 -m ~/.devops/bin/activate && \
  source ~/.devops/bin/activate
```

* Install the necessary system softwares.
```
$ ./setup_installations.sh
```

* Install the necessary project dependencies
```
$ make install
```

### Project Setup

* Test project code using linting
```
$  make lint
```

* Run project unittests
```
$  make test
```

* Dockerize project and make a prediction (`if it fails run with sudo`)
```
$ ./run_docker.sh 
```

* Display docker log statements (`if it fails run with sudo`)
```
$ docker logs project-four
```

* Deploy containerized application to DockerHub (`if it fails run with sudo`)
```
$ ./upload_docker.sh 
```

* Create a Kubernetes cluster and deploy a container using Kubernetes
```
$ ./run_kubernetes.sh 
```

* Running application locally (`Standalone application`)
```
$ flask run 
```
OR

```
$ python app.py 
```

### Install eks cluster

* Set your aws configuration using the `awscli` by running
```
$ sudo apt install awscli

$ aws configure
```

* deploy eks cluster
```
$ eks create cluster
```

### Folder and File Structure Explained
- app.py: `our flask application file`
- test_app.py: `file that exercise edge cases in code blocks`
- Makefile: `make utility file which defines set of tasks to be executed`
- Dockerfile: `file with instructions to build Docker images`
- .hadolint.yaml: `supports hadolint configurations like the ingnoring rules.`
- .dockerignore: `prevents files or folders from being listed in the build context`
- requirements.txt: `file with listed project dependecies`
- `docker_out.txt` and `kubernetes_out.txt`:
    - These are output files with given provided exercise logs
- `make_predictions.sh`, `run_docker.sh`, `run_kubernetes.sh`, `setup_installations.sh`, `upload_docker.sh`:
    - These are script files with a sequence of commands run to perform a given task.

### Author:

    Matembu Emmanuel Dominic | Software/Devops Engineer
