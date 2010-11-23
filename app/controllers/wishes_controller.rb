class WishesController < ApplicationController
  
  before_filter :login_required, :only => :create
  
  def index
    @wishes = Wish.find(:all, :limit => 10, :order => 'wishes.id DESC' )
  end
  
  def create
	
	@wish = @current_user.wishes.create(params[:wish])
	redirect_to user_path(@current_user)
  end
  
end
