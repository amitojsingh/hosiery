json.extract! master_employe, :id, :name, :mobile, :address, :created_at, :updated_at
json.url master_employe_url(master_employe, format: :json)
