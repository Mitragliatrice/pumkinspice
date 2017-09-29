json.extract! skill_list, :id, :title, :experience_length, :user_rating, :admin_rating, :user_notes, :admin_notes, :date_rated, :link, :created_at, :updated_at
json.url skill_list_url(skill_list, format: :json)
