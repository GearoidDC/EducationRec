class CandidatesController < ApplicationController
  before_action :logged_in_user
  before_action :set_candidate, only: [:show, :edit, :update, :destroy]
  before_action :set_candidates, only: [:index, :create, :update]

  # GET /candidates
  # GET /candidates.json
  def index
    redirect_to root_path
  end

  # GET /candidates/1
  # GET /candidates/1.json
  def show
    @skills = @candidate.skills
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end

  # GET /candidates/new
  def new
    @candidate = Candidate.new
    redirect_to root_path
  end

  # GET /candidates/1/edit
  def edit
    respond_to do |format|
      format.html { redirect_to root_url }
      format.js
    end
  end

  # POST /candidates
  # POST /candidates.json
  def create
    @candidate = Candidate.new(candidate_params)

    respond_to do |format|
      if @candidate.save
        format.html { redirect_to root_url }
        format.js
        format.json { render :show, status: :created, location: @candidate }
      else
        format.js { render layout: false, content_type: 'text/javascript' }
        format.html
      end
    end
  end

  # PATCH/PUT /candidates/1
  # PATCH/PUT /candidates/1.json
  def update
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to root_url}
        format.js
        format.json { render :show, status: :ok, location: @candidate }
        
      else
        format.js { render layout: false, content_type: 'text/javascript' }
        format.html
      end
    end
  end

  # DELETE /candidates/1
  # DELETE /candidates/1.json
  def destroy
    @candidate.destroy
    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :no_content }
      format.js { render js: 'window.top.location.reload(true);' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end
    
    # Sets a local variable for all candidates
    def set_candidates
      @candidates = Candidate.all
    end

    # Only allow a list of trusted parameters through.
    def candidate_params
      params.require(:candidate).permit(:name, :phone_number, :email)
    end
    
    def logged_in_user
      unless current_user
        flash[:alert] = "Please log in."
        redirect_to root_url
      end
    end
end
