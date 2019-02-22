class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :only_current_user

  # GET to /users/:user_id/profile/new
  def new
    # Render blank profile details form
    @profile = Profile.new
  end

  def create
    @user = User.find(params[:user_id])
    @profile = @user.build_profile(profile_params)

    if @profile.save
      flash[:success] = "Profile updated"
      redirect_to user_path(params[:user_id])
    else
      render action: :new
    end
  end


    # GET to /users/:user_id/profile/edit
    def edit
      # Reach into the database and find that particular user
      @user = User.find(params[:user_id])

      # Grab that profile
      @profile = @user.profile
    end

    # PUT/PATCH request to /users/:user_id/profile
    def update
      @user = User.find(params[:user_id])

      @profile = @user.profile

      # Update attributes mass assigns all of the form fields
      # If the update succeeds, flash a message and send back
      # to their profile page
      if @profile.update_attributes(profile_params)
        flash[:success] = "Profile updated!"
        redirect_to user_path(id: params[:user_id])

      # If it fails, refresh the edit page
      else
        render action :edit
      end
    end


    private
      # Whitelist the form fields to prevent hackers from
      # adding additional form fields
      def profile_params
        params.require(:profile).permit(:first_name, :last_name, :gender, :zip_code, :contact_email, :description)
      end

      # Prevents the user from editing other people's pages
      def only_current_user
        @user = User.find(params[:user_id])

        # current_user is from devise
        redirect_to(root_url) unless @user == current_user
      end

end
