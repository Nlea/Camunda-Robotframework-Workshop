import time
from camunda.external_task.external_task import ExternalTask, TaskResult
from camunda.external_task.external_task_worker import ExternalTaskWorker
import robot
import listener


def handle_task(task: ExternalTask) -> TaskResult:

    l = listener.getVariablesListener()
    robotOutput = robot.run("task.robot", listener=l)
    
    if(robotOutput!= 0):
        return task.failure(error_message="RF-task failed",  error_details="The RF task was not completed successfully. For more information open the log.html", 
            max_retries=0, retry_timeout=5000)
    else:
        coffeeType = l.variables["${result}"]
        return task.complete({"type": coffeeType})

ExternalTaskWorker(worker_id="1").subscribe("define coffee type", handle_task)