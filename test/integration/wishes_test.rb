
require 'test_helper'

class WishesTest < ActionController::IntegrationTest

  def test_wish_submission_with_login
    
    # User gets to the home page
    get '/'
    assert_response :success
    assert_template 'wishes/index'

    # User goes to the login page
    get '/session/new'
    assert_response :success
    assert_template 'sessions/new'

    # User logs in
    post '/session', :login => 'alex',
          :password => 'secret'
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_template 'users/show'

    # User adds new wish
    post '/users/1/wishes', :wish => { :idea => 'New wish is comming'}
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_template 'users/show'

    # User sees the wish added to his wishlist
    assert_select "ul li", 'New wish is comming'
  end

end
