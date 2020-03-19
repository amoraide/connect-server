require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'validations work' do
    test_user = User.new

    refute test_user.save
    assert test_user.errors.messages[:username]
    assert test_user.errors.messages[:password]

    test_user.username = 'test'
    test_user.password = 'test'

    assert test_user.save
  end
end
