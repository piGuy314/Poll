class ProfilesController < ApplicationController


  #GET to /users/:user_id/profile/new
  def new
    # When action gets run Render blank profiles details form
    @profile = Profile.new
  end
end
