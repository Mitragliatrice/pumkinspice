module ApplicationHelper
  def admin?
      current_user.roles.include?('admin')
    end
end
