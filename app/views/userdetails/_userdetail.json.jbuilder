json.extract! userdetail, :id, :name, :address, :age, :email, :location, :gender, :phone, :skills, :gegree, :college, :password_digest, :about, :position, :desired_pay, :language, :programming_language, :cgpa, :achievement, :project, :created_at, :updated_at
json.url userdetail_url(userdetail, format: :json)
