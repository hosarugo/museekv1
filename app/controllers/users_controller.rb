class UsersController < ApplicationController

  def favourites
    @favourites = Favorite.where("favoritor_id = ?" , current_user.id)
  end

  def show
    @user = User.find(params[:id])
    @advertisements =  @user.advertisements

  end

end
