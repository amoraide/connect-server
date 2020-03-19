require 'spec_helper'

describe User do
  it 'should apply validations' do
    test_user = User.new

    expect(test_user.save).to be_falsey
    expect(test_user.errors.messages[:username]).not_to be_nil
    expect(test_user.errors.messages[:password]).not_to be_nil

    test_user.username = 'test'
    test_user.password = 'test'

    expect(test_user.save).to be_truthy
  end
end
