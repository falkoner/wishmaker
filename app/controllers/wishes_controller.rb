class WishesController < ApplicationController

  def create
	@user = User.find(params[:user_id])
	@wish = @user.wishes.create(params[:wish])
	redirect_to user_path(@user)
  end
  
end
