class Api::V1::SkillsController < ApplicationController

  skip_before_action :verify_authenticity_token
  
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  # GET /skills

  def index
    @skills = Skill.all
    render json: @skills
  end

  # GET /skills/1

  def show
    render json: @skill
  end

  # GET /skills/new


  # GET /skills/1/edit
  def edit
  end

  # POST /skills
  # POST /skills.json
  def create
    @skill = Skill.new(skill_params)
    if @skill.save
      render json: @skill, status: :created, location: api_v1_skill_url(@skill)
    else
      render json: @basic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skills/1
  # PATCH/PUT /skills/1.json
  def update
    if @skill.update(basic_params)
      render json: @skill
    else
      render json: @skill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.json
  def destroy
    @skill.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_params
      params.require(:skill).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :basic_id)
    end
end
