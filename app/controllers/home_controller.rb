class HomeController < ApplicationController
  def index
    @candidates = Candidate.all
    @skills = Skill.all
  end
  

end
