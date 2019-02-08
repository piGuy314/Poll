class ProfilesController < ApplicationController


  #GET to /users/:user_id/profile/new
  def new
    # When action gets run Render blank profiles details form
    @profile = Profile.new
  end

  # POST to /users/:user_id/profile
  def create
    #Ensure that we have the user who is filling out form
    @user = User.find( params[:user_id] )
    #Create profile linked to this specific user
    @profile = @user.build_profile( profile_params )
    if @profile.save
      flash[:success] = "Profile updated!"
      redirect_to root_path
    else
      render action: :new
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :gender, :zip_code, :contact_email, :description)
  end
end
