class UsersController < ApplicationController

  before_filter :login_required, :only => :show

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
       session[:user_id] = @user.id
       redirect_to user_path(@user)
    else
      render :action => 'new'
    end
  end
  
  def show
	@user = User.find(params[:id])
  redirect_to users_path if @current_user != @user
  end
	  
end
