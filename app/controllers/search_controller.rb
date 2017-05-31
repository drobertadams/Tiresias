class SearchController < ApplicationController

  def index
    #store all the projects that match the name searched
    @submissions = Submission.where("name LIKE ? ", "%#{params[:name]}%")  
  end
end
