# Camunda-Robotframework-Workshop

Welcome to the Workshop: "Orchestrating Robot Tasks with Camunda Platform". The workshop is hold at Robocon 2022. But you can follow the exercises here as well. The readme contains the detailed instruction on how to complete the exercises. In the other folders you find for every exercise the solution. The solution normally contains the bpmn process model, code and a README that explained how the exercise was solved in more detail. 

**Requirements/ Tools needed:**

- Docker
- Camunda Modeler

## Exercise 1: Set up a Camunda application using Docker
:trophy: The goal of this exercise is to create a running Camunda instance with Docker

For this exercise you need [Docker](https://www.docker.com/). Make sure [Docker is installed](https://docs.docker.com/get-docker/) on your machine. 

[Camunda provides a Docker imagine](https://github.com/camunda/docker-camunda-bpm-platform#camunda-platform-docker-images). Start a Docker container of the latest Camunda Platform 7 release:

```
docker pull camunda/camunda-bpm-platform:latest
docker run -d --name camunda -p 8080:8080 camunda/camunda-bpm-platform:latest
```

:note: Once you started the container you will see the container id:

![Screenshot Terminal](img/04-Terminal.png)
 If you like to stop the container you can use: 

```
docker stop 'ContainerId'
```

Once you started the Docker container, Camunda is started in a Tomcat application server. You can access the Camunda's Frontend applications via: http://localhost:8080/camunda-welcome/index.html

Select Cockpit and log in with the default credentials: 
```
username: demo
password: demo
```
![Screenshot Cockpit](img/01-Cockpit.png)

Cockpit is the tool to monitor and operate running process instances in Camunda. You can see that there are already two process definitions deployed and 8 running process instances. Click on the 8 running process instances. Select the invoice process: 

![Screenshot Process definitions](img/02-Process-Definitions.png)

A running process instances is represented with a blue token: 

![Running instance](img/03-Running-Process-Instance.png)

Inspect a instance and see what information you can access. 

:tada: Congrats you have a Camunda and 2 examIple processes running


## Exercise 2: Model a process and add it to your application

:trophy: The goal of this exercise is to create a process for the Camunda application. 

For this exercise you need the Camunda Modeler. If you don't have it installed you can download it [here](https://camunda.com/download/modeler/)

**Description:**

Imagine you start your day at Robocon: You need coffee! 

Before you order your coffee you fill out a [survey](https://www.buzzfeed.com/rileyroach/which-coffee-are-you-572dyo73ow) to find out what kind of coffee you are most like. The next step is to get all the ingrients for the defined coffee type. Once you have the ingrients you can prepare the coffee. Once your coffee is ready you want to tweet about it before you finally drink it. 

Model a BPMN process model from that description in the Camunda Modeler. Hint: You can find a solution [here](Solutions/02).

Once you have your process model make sure that all task types are user tasks. 

![User Tasks](img/05-UserTasks.png)

Now you can deploy the process Model from the Camunda Modeler to your running Camunda instance. In the left corner of the modeler you find a :rocket: symbol:

![Deploy from Modeler Step 1](img/06-Deploy-Button.png)

Select it: 

![Deploy from Modeler Step 2](img/07.Deploy.png)

The default REST endpoint is localhost:8080.

![Sucessfull deployed](img/08-Deploy-successful.png)

Inspect your process in Cockpit. 



## Exercise 3: Implement a Service Task: Combing the Pyhton External Task client and Robotframework

## Exercise 4: Implement a Services: Using the Camunda-Robotframework library

## Exercise 5: Adding BPMN events to the process

## Exercise 6: Throwing BPMN errors in Robotframework
