class SkillListsController < ApplicationController
  before_action :set_skill_list, only: [:show, :edit, :update, :destroy]
  access user: :all, admin: :all

  # GET /skill_lists
  # GET /skill_lists.json
  def index
    @skill_lists = SkillList.all
  end

  # GET /skill_lists/1
  # GET /skill_lists/1.json
  def show
  end

  # GET /skill_lists/new
  def new
    @skill_list = current_user.skill_lists.new
  end

  # GET /skill_lists/1/edit
  def edit
  end

  # POST /skill_lists
  # POST /skill_lists.json
  def create
    @skill_list = SkillList.new(skill_list_params)
    @skill_list.user_id = current_user.id
    respond_to do |format|
      if @skill_list.save
        format.html { redirect_to @skill_list, notice: 'Skill list was successfully created.' }
        format.json { render :show, status: :created, location: @skill_list }
      else
        format.html { render :new }
        format.json { render json: @skill_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_lists/1
  # PATCH/PUT /skill_lists/1.json
  def update
    respond_to do |format|
      if @skill_list.update(skill_list_params)
        format.html { redirect_to @skill_list, notice: 'Skill list was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_list }
      else
        format.html { render :edit }
        format.json { render json: @skill_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_lists/1
  # DELETE /skill_lists/1.json
  def destroy
    @skill_list.destroy
    respond_to do |format|
      format.html { redirect_to skill_lists_url, notice: 'Skill list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_list
      @skill_list = SkillList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_list_params
      params.require(:skill_list).permit(:title, :experience_length, :user_rating, :admin_rating, :user_notes, :admin_notes, :date_rated, :link)
    end



    def scoped_skill_list
      admin? ? @skills = SkillList.all : @skills = SkillList.where(user_id: current_user.id).find(params[:id])
    end

end
