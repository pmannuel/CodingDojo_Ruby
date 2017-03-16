require 'rails_helper'

RSpec.describe Message, type: :model do
  it "must not be blank" do
    expect(build(:message, message:"")).to be_invalid
  end

  it "has to be longer than 10 characters" do
    expect(build(:message, message:"thanks")).to be_invalid
  end

  it "must have a user" do
    message = build(:message)
    expect(message.user).not_to be_nil
  end
end
