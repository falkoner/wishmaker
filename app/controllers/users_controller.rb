class UsersController < ApplicationController
  def index
	@all_users_list = "" # initialize variable for the view
	User.find(:all).each { |u| @all_users_list << "<li>#{u.name}</li>" }
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
  
end
