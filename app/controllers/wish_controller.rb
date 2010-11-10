class WishController < ApplicationController

  def create
	@user = User.find(params[:user_id])
	@wish = @user.wishes.create[:idea]
	redirect_to user_path(@user)
  end
  
end
