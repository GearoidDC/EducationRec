class HomeController < ApplicationController
  def index
    @candidates = Candidate.all
    @skills = Skill.all
    @skill = Skill.new
    @candidate = Candidate.new
    @user = User.new
  end
  

end
