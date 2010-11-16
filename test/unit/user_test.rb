require 'test_helper'

class UserTest < ActiveSupport::TestCase
    def test_should_be_valid
        u = User.create(:name => 'Lock John', :email => 'email@address.com')
		assert u.valid?
	end

    def test_should_not_be_valid_without_name
        u = User.create(:name => nil, :email => 'email@address.com')
		assert u.errors.on(:name)
	end
		
    def test_should_not_be_valid_without_email
	       u = User.create(:name => 'Bob Bo', :email => nil)
		assert u.errors.on(:email)
	end
	
	def test_should_have_wishes_association #verify that story "one" owns whishes "one" and "two"
		assert_equal [ wishes(:one), wishes(:two) ], users(:one).wishes
	end
		
end
