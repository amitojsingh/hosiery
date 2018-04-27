json.extract! master_task, :id, :taskname, :created_at, :updated_at
json.url master_task_url(master_task, format: :json)
