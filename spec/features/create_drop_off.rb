require "rails_helper"

RSpec.feature "New Drop Off" do
  scenario "Sign in" do
    visit "/"

    click_link "Sign In"

    fill_in "Email", with: "dominick@theosfp.com"
    fill_in "Password", with: "drlove"

    click_button "Log in"

    expect(page.current_path).to eq(new_user_session_path)
  end
end
