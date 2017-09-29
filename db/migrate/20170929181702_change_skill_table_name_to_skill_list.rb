class ChangeSkillTableNameToSkillList < ActiveRecord::Migration[5.1]
  def change
    rename_table :skill_tables, :skill_lists
  end 
end

