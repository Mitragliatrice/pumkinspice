json.extract! skill_table, :id, :title, :experience_length, :user_rating, :admin_rating, :user_notes, :admin_notes, :date_rated, :link, :created_at, :updated_at
json.url skill_table_url(skill_table, format: :json)
