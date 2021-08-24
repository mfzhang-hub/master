uint8 STATUS_UNFINISHED = 0
uint8 STATUS_SUCCEEDED = 1
uint8 STATUS_FAILED = 2
uint8 STATUS_PAUSED = 3

#  not accepted by diaodu
uint8 STATUS_STOPPED = 10    # task stopped, no need send to diaodu
uint8 STATUS_OFFLINE_PAUSED = 11
uint8 STATUS_SKIP = 12
uint8 STATUS_EXCEPT = 13

int64 task_id
uint32 pri_task_cmd
uint8 status