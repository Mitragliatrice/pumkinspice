class AddIndexToSkillLists < ActiveRecord::Migration[5.1]
  def change
    add_index :skill_lists, :title
  end
end
