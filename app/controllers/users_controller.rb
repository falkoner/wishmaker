class UsersController < ApplicationController
  def index
	@users = User.all
	@current_time = Time.now
  end

  def new
	@user = User.new
  end
  
  def create
    @user = User.new(params[:user])
	if @user.save
       flash[:notice] = 'New user was created'
	   redirect_to users_path
	else
    render :action => 'new'
	end
  end
  
  def show
	@user = User.find(params[:id])
  end
	  
end
