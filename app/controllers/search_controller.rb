class SearchController < ApplicationController
	def search
		unless params [:query].blank?
			@results = Page.search( params[:query] )
		end
	end

	@results.each do |page|
		def 
			if page.respond_to? :highlight
				p raw page.highlight.body.to_a.join(' ')
			else
				p raw truncate(page.body, length: 100)
		end
	end
end