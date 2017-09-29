class SkillTable < ApplicationRecord
	settings index: { number_of_shards: 1 } do
  	mapping dynamic: false do
  		indexes :title, analyzer: 'english'
  		indexes :body, analyzer: 'english'
  		indexes :user_id, name: 'string'
  		indexes :user_skills, title: 'string'
  	end
  end

  def as_indexed_json(options = nil)
  	self.as_json( only: [ :title, :body, :user_id, :user_skills ] ) 
  end

  def self.search(query) 
  	__elasticsearch__.search( 
  	{ 
  		query: { 
  			multi_match: { 
  				query: query, 
  				fields: ['title', 'body'] 
  			} 
  		},
  	} 
  end
end
