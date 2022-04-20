# Solution Exercise 2

## Process Model
 From the description we can model a simple bpmn diagramm containing 4 tasks. We will talk about the task types in the next section. 


 ![solution exercise 2](img/02.png)

## User Tasks
 Change all the task to User Task before deploying the process: 

 ![solution with user tasks](img/02-all-user-task.png)

 
 ## Problems with the deployment
- Check if you have a Camunda instance running. The deploy dialog from the Camunda Modeler will indicate if the REST endpoint has no running Camunda instance: 

![Deploy error](img/03-deploy-error.png)

- Do you have other symboles in the process? You can always inspect the log. If you get a ``` 09005 Could not parse BPMN process``` -Error. It is very likely that you used some symboles we have not discussed yet. Some symbols require to add technical attributes. No worries we will cover more symboles in the Workshop. 
