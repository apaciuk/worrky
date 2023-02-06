json.extract! job, :id, :title, :description, :company, :url, :created_at, :updated_at
json.url job_url(job, format: :json)
json.description job.description.to_s
