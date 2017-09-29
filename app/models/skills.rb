class Skills < ActiveRecord::Base
	searchkick

	def search_data
		{
			user: my_model_attribute_name
			another_index_attribute: another_model_attribute
		}
	end
end
