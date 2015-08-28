json.array!(@drill_types) do |drill_type|
  json.extract! drill_type, :id, :name, :required_frequency
  json.url drill_type_url(drill_type, format: :json)
end
