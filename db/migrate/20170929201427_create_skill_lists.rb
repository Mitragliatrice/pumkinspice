class CreateSkillLists < ActiveRecord::Migration[5.1]
  def change
    create_table :skill_lists do |t|
      t.string :title
      t.text :experience_length
      t.integer :user_rating
      t.integer :admin_rating
      t.text :user_notes
      t.text :admin_notes
      t.date :date_rated
      t.text :link

      t.timestamps
    end
  end
end
