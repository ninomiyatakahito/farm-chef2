class UsersController < ApplicationController

  def index
  end

  def new
  end
  
  def show
    @user = User.find(params[:id])

    user = User.find(params[:id])
    @name = user.name
    @prefecture = user.prefecture
    @business_name = user.business_name
    @profile = user.profile
  end
end
