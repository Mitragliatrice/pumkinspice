class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
         has_many :skill_lists

=======
  settings index: { number_of_shards: 1 } do
  	mapping dynamic: false do
  		indexes :title, analyzer: 'english'
  		indexes :body, analyzer: 'english'
  	end
  end

  
>>>>>>> 56a3593ed239cf5e485ae72df6c41f76667c1faa
end
