class AddUserRefrenceToSkillList < ActiveRecord::Migration[5.1]
  def change
    add_reference :skill_lists, :user, foreign_key: true
  end
end
