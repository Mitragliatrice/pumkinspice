class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_skills = @user.skill_lists
  end


  #   current_user.roles.first == :admin ? @skill_list =  : @skill_list = nil
  #   end

  def index
    @user = User.all
  end

end
