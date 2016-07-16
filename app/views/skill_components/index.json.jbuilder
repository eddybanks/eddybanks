json.array!(@skill_components) do |skill_component|
  json.extract! skill_component, :id, :name, :description
  json.url skill_component_url(skill_component, format: :json)
end
