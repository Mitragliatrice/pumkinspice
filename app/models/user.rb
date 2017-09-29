class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :skill_lists
         has_many :users

  # searchkick mappings {
  # 	user: {
  # 		properties: {
  # 			name: {type: "string", norms: {enabled: false}}
  # 		}
  # 	}
  # }

  
	def search_data
		{
			user_id: index_skill_lists_on_user_id,
			title: index_skill_lists_on_title
		}
	end

  def search_data
  	Attributes.merge(
  			User_names: users.map(&:user_name))
 	end
end
