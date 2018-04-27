class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @gardens = Garden.where(user: current_user)
    # @community_gardens = CommunityGarden.all # need to change this to include all users who are part of the community garden
  end
  def addcoins
    user = User.find(params[:id])
    user.coins += user.productivity
  end


  # def pick_plant 
  # 	# user = current_user
  # 	# user.current_plant = params[:plant][:ndex]
  # 	# user.save
  # 	redirect_to root_path
  # 	# user.productivity +
end


