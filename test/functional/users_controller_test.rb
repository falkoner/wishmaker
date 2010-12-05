require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  def test_should_show_index
    get :index
    assert_response :success
    assert_template 'index'
#assert_not_nil assigns(:current_time)
#assert_not_nil assigns(:all_users_list)
  end
  
  def test_should_show_new
    get :new
    assert_response :success
    assert_template 'new'
    assert_not_nil assigns(:user)
  end
  
  def test_should_show_new_form
    get :new
    assert_select 'form p', :count => 3
  end

  def test_should_add_user
    post :create, :user => {
      :name => 'Bob Murley',
      :email => 'bob.m@google.com'
    }
    assert ! assigns(:user).new_record?
    assert_redirected_to users_path
    assert_not_nil flash[:notice]
  end
  
  def test_should_reject_missing_user_attribute
    post :create, :user => { :name => 'User without e-email' }
    assert assigns(:user).errors.on(:email)
  end
  
  def test_should_show_user
		get :show, :id => users(:one)
		assert_response :success
		assert_template 'show'
		assert_equal users(:one), assigns(:user)
  end
  
  def test_should_show_wishlist
		get :show, :id => users(:one)
		assert_select 'ul#wishlist li', :count => 2 # there is list "wishlist" with 2 items on page
  end

end
