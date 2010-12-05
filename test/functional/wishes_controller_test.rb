require 'test_helper'

class WishesControllerTest < ActionController::TestCase
	def test_should_accept_wish
		assert users(:two).wishes.empty? # there is no wishes yet for user "two"
		post :create, :user_id => users(:two), :idea => 'Here is a new idea' # create new wish
		assert ! assigns(:user).wishes.empty? # the number of wishes should be non zero
	end
end