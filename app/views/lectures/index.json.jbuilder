json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :title, :attach, :content, :user_id, :course_id
  json.url lecture_url(lecture, format: :json)
end
