class SkillTablesController < ApplicationController
  before_action :set_skill_table, only: [:show, :edit, :update, :destroy]

  # GET /skill_tables
  # GET /skill_tables.json
  def index
    @skill_tables = SkillTable.all
  end

  # GET /skill_tables/1
  # GET /skill_tables/1.json
  def show
  end

  # GET /skill_tables/new
  def new
    @skill_table = SkillTable.new
  end

  # GET /skill_tables/1/edit
  def edit
  end

  # POST /skill_tables
  # POST /skill_tables.json
  def create
    @skill_table = SkillTable.new(skill_table_params)

    respond_to do |format|
      if @skill_table.save
        format.html { redirect_to @skill_table, notice: 'Skill table was successfully created.' }
        format.json { render :show, status: :created, location: @skill_table }
      else
        format.html { render :new }
        format.json { render json: @skill_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_tables/1
  # PATCH/PUT /skill_tables/1.json
  def update
    respond_to do |format|
      if @skill_table.update(skill_table_params)
        format.html { redirect_to @skill_table, notice: 'Skill table was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_table }
      else
        format.html { render :edit }
        format.json { render json: @skill_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_tables/1
  # DELETE /skill_tables/1.json
  def destroy
    @skill_table.destroy
    respond_to do |format|
      format.html { redirect_to skill_tables_url, notice: 'Skill table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_table
      @skill_table = SkillTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_table_params
      params.require(:skill_table).permit(:title, :experience_length, :user_rating, :admin_rating, :user_notes, :admin_notes, :date_rated, :link)
    end
end
