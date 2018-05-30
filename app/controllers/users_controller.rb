class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @advertisements =  @user.advertisements

  end

end
