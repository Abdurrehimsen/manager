json.extract! data_list, :id, :name, :created_at, :updated_at
json.url data_list_url(data_list, format: :json)
