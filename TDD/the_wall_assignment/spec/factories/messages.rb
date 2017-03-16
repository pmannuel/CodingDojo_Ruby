FactoryGirl.define do
  factory :message do
    message "This is a valid message"
    user
  end
end
