require "rails_helper"

RSpec.feature "Signing In" do
  scenario "A user signs into the system." do
    visit "/"

    click_link "Sign In"

    fill_in "Email", with: "dominick@theosfp.com"
    fill_in "Password", with: "drlove"

    click_button "Log in"

    expect(page.current_path).to eq(new_user_session_path)
  end
end
