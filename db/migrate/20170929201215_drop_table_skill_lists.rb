class DropTableSkillLists < ActiveRecord::Migration[5.1]
  def change
    drop_table :skill_lists
  end
end
