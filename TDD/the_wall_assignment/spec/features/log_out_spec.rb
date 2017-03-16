require 'rails_helper'
feature "log out" do
  scenario "successfully log out and return to sign in page" do
    visit root_path
    fill_in "username", with: "testuser"
    click_button "Sign In"
    click_link('log-out-button')
    expect(page).to have_content "SIGN IN"
  end
end
