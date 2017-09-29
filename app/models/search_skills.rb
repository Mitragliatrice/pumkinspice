class Skills < ActiveRecord::Base
	include Elasticsearch::Model
	include Elasticsearch::Model::Callbacks

	index_name Pumkinspice.application.class.parent_name.underscore
	document_type self.name.downcase
end