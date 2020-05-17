class HomeController < ApplicationController
  def index
    @candidates = Candidate.all
    @skills = Skill.all
    @user = User.new
  end
end
