class SkillsController < ApplicationController
	def index
		@skills = Skill.search((params[:q].present? ? params[:q] : '*')).records
	end
end