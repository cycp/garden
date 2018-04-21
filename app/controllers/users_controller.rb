class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @trainers = User.all
  end

  def show
    @trainer = User.find(params[:id])
  end

end
