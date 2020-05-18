class SkillsController < ApplicationController
  before_action :logged_in_user
  before_action :set_skill, only: [:show, :edit, :update, :destroy]
  before_action :set_skills, only: [:index, :create, :update]
  

  # GET /skills
  # GET /skills.json
  def index
    redirect_to root_path
  end

  # GET /skills/1
  # GET /skills/1.json
  def show
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end

  # GET /skills/new
  def new
    @skill = Skill.new
    redirect_to root_path
  end

  # GET /skills/1/edit
  def edit
    @candidates = Candidate.all
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end

  # POST /skills
  # POST /skills.json
  def create
    @skill = Skill.new(skill_params)
    @candidates = Candidate.all
    @current_skill = @skill

    respond_to do |format|
      if @skill.save
        format.html { redirect_to root}
        format.js {  @current_skill }
        format.json { render :show, status: :created, location: @skill }
      else
        format.js { render layout: false, content_type: 'text/javascript' }
        format.html
      end
    end
  end

  # PATCH/PUT /skills/1
  # PATCH/PUT /skills/1.json
  def update
    @skills = Skill.all
    @candidates = Candidate.all
    @current_skill = @skill
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to root}
        format.js {@current_skill }
        format.json { render :show, status: :ok, location: @skill }
      else
        format.js { render layout: false, content_type: 'text/javascript' }
        format.html
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.json
  def destroy
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to root_url}
      format.json { head :no_content }
      format.js { render js: 'window.top.location.reload(true);' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end
    
    # Sets a local variable for all skills
    def set_skills
      @skills = Skill.all
    end

    # Only allow a list of trusted parameters through.
    def skill_params
      params.require(:skill).permit(:name, :proficiency, :description, :candidate_id)
    end
    
    def logged_in_user
      unless current_user
        flash[:alert] = "Please log in."
        redirect_to root_url
      end
    end
    
end
