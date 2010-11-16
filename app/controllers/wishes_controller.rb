class WishesController < ApplicationController
  
  before_filter :login_required, :only => :create
  
  def create
	
	@wish = @current_user.wishes.create(params[:wish])
	redirect_to user_path(@current_user)
  end
  
end
