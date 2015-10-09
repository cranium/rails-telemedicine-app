json.array!(@cases) do |case|
  json.extract! case, :id, :title, :user_id
  json.url case_url(case, format: :json)
end
