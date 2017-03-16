require 'rails_helper'

RSpec.describe User, type: :model do
  it "should not save if first_name field is blank" do
    expect(build(:user, username: "p")).to be_invalid
  end

  it "should not create a new user if username is not unique" do
    user = User.create(
          username: 'lukelee'
      )

    user2 = User.create(
          username: 'lukelee'
      )
    expect(user2).to be_invalid
  end
end
