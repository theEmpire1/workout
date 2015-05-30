require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user_params) { FactoryGirl.attributes_for(:user) }

  before(:each) do
    @user = User.create(user_params)
  end

  it 'successfully builds a new user given valid attributes' do
    result = User.find(@user.id)
    expect(result).to eql(@user)
  end
end
