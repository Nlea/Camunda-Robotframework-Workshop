import time
from camunda.external_task.external_task import ExternalTask, TaskResult
from camunda.external_task.external_task_worker import ExternalTaskWorker
import robot


def handle_task(task: ExternalTask) -> TaskResult:
    
    name = 'name: ' + task.get_variable("name")
    coffeetype = 'type: ' + task.get_variable("type")
   
    variables =[name, coffeetype]

    robotOutput = robot.run("task.robot", variable=variables)

    if(robotOutput!= 0):        
        return task.failure(error_message="RF-task failed",  error_details="The RF task was not completed successfully. For more information open the log.html from the RF task ", 
                            max_retries=0, retry_timeout=5000)   
  
    return task.complete({"emailSent": True})

ExternalTaskWorker(worker_id="1").subscribe("tweet coffee", handle_task)

