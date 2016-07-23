json.array!(@softwares) do |software|
  json.extract! software, :id, :name, :description
  json.url software_url(software, format: :json)
end
