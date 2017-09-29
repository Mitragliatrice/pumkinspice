class User < ApplicationRecord
  ############################################################################################
  ## PeterGate Roles                                                                        ##
  ## The :user role is added by default and shouldn't be included in this list.             ##
  ## The :root_admin can access any page regardless of access settings. Use with caution!   ##
  ## The multiple option can be set to true if you need users to have multiple roles.       ##
  petergate(roles: [:admin], multiple: false)                                      ##
  ############################################################################################


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
         has_many :skill_lists
         has_many :users
=======

  has_many :skill_lists
>>>>>>> 1e0de3bc9f80961dc1ef72a96210add0eaa2f3fc

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
