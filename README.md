# Camunda-Robotframework-Workshop

Welcome to the Workshop: "Orchestrating Robot Tasks with Camunda Platform". The workshop is hold at Robocon 2022. But you can follow the exercises here as well. The readme contains the detailed instruction on how to complete the exercises. In the other folders you find for every exercise the solution. The solution normally contains the bpmn process model, code and a README that explained how the exercise was solved in more detail. 

**Requirements/ Tools needed:**

- Docker
- Camunda Modeler
- Python
   -Robotframework module 
   -External Task client   
- Robotframework
- IDE of your choice

## Exercise 1: Set up a Camunda application using Docker
:trophy: The goal of this exercise is to create a running Camunda instance with Docker and to inspect the examples in Cockpit

:toolbox: **Tools needed**:

For this exercise you need [Docker](https://www.docker.com/). Make sure [Docker is installed](https://docs.docker.com/get-docker/) on your machine. 

### Run Camunda with Docker

[Camunda provides a Docker imagine](https://github.com/camunda/docker-camunda-bpm-platform#camunda-platform-docker-images). Start a Docker container of the latest Camunda Platform 7 release:

```
docker pull camunda/camunda-bpm-platform:latest
docker run -d --name camunda -p 8080:8080 camunda/camunda-bpm-platform:latest
```
  
    
    

 -------------------------  
:pushpin: Note:

Once you started the container you will see the container id:

![Screenshot Terminal](img/04-Terminal.png)

If you like to stop the container you can use```docker stop 'ContainerId'``` or ```docker stop 'Container name'```

-------------------------


 ### Cockpit and running process instances
 

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

:tada: Congrats you have a Camunda application running and inspected the two deployed example process definitions


## Exercise 2: Model a process and add it to your application

:trophy: The goal of this exercise is to create a process and deploy it to your running Camunda application. 

:toolbox: **Tools needed**:
For this exercise you need the Camunda Modeler. If you don't have it installed you can download it [here](https://camunda.com/download/modeler/)

### Process Description

Imagine you start your day at Robocon: You need coffee! 

Before you order your coffee you fill out a [survey](https://www.buzzfeed.com/rileyroach/which-coffee-are-you-572dyo73ow) to find out what kind of coffee you are most like. The next step is to get all the ingrients for the defined coffee type. Once you have the ingrients you can prepare the coffee. Once your coffee is ready you want to tweet about it before you finally drink it. 

Model a BPMN process model from that description in the Camunda Modeler. Hint: You can find a solution [here](Solutions/02).

### Task types: user task

Once you have your process model make sure that all task types are user tasks. Change them in the Camunda Modeler.

![User Tasks](img/05-UserTasks.png)

### Properties panel: technical attributes on general level

In the Camunda Modeler click into the canvas and make sure that you have not selected a bpmn symbol. Now have a look on the right side at the properties pannel. The properties panel is used to set technical attributes for symbols and the process. 

![General process level](img/09-general-process-information.png)

Give your process a readable ID (something like: ```Process_getCoffee```) and a readable name (something like: ```Get Coffee Process```). 

:bulb: **Good to know:** 
- The process ID is used to version your process definitions. The Camunda engine takes care about the versioning.
- The name will show up in Cockpit. If no name is defined the processID will show up instead

### Deploy the process

Now you can deploy the process Model from the Camunda Modeler to your running Camunda instance. In the left corner of the modeler you find a :rocket: symbol:

![Deploy from Modeler Step 1](img/06-Deploy-Button.png)

Select it: 

![Deploy from Modeler Step 2](img/07.Deploy.png)

The default REST endpoint is localhost:8080. As we started our Docker image at that port. We don't have to change it

![Sucessfull deployed](img/08-Deploy-successful.png)

Inspect your process in Cockpit. If you have problems with your deployment check out [this section](https://github.com/Nlea/Camunda-Robotframework-Workshop/blob/main/Solutions/02/README.md#problems-with-the-deployment).

### Run a process instance and step through the process using Tasklist



## Exercise 3: Implement a Service Task: Combing the Pyhton External Task client and Robotframework
:trophy: The goal of this exercise is to connect a Robotframework Task to the process using Python. 

:toolbox: **Tools needed**:
For this exercise you need to have Python 3 installed on your machine. 



## Exercise 4: Implement a Services: Using the Camunda-Robotframework library

## Exercise 5: Adding BPMN events to the process

## Exercise 6: Throwing BPMN errors in Robotframework
