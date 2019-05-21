class ProfilesController < ApplicationController
 before_action :authenticate_user!
 
  def index
  end
  
 # def profile_info
   # @profile = current_user.profile
    #respond_to do |format|
    #   format.js
    # end
 # end
  
  def new
    @profile = Profile.new
  end
  
  def edit
   
  end
  
   def show
   @profile = Profile.find_by(params[:id])
  end

  def update
    @profile = current_user.profile
    @profile.update(profile_params)
    if @profile.save
      redirect_to profile_path
    end
  end
  
  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to root_path
    else
      render 'new'
    end
    
  end
  
  private
  
  def profile_params
    params.require(:profile).permit(:user_id, :firstname, :lastname, :country, :avatar)
  end

end
