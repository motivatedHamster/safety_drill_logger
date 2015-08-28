json.array!(@drills) do |drill|
  json.extract! drill, :id, :date_performed
  json.url drill_url(drill, format: :json)
end
