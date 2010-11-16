require 'test_helper'

class WishTest < ActiveSupport::TestCase
  def test_user_association # verify that user "one" owns wish "one"
    assert_equal users(:one), wishes(:one).user
  end

end
