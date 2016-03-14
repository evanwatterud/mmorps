require "spec_helper"

feature "User views main page" do
  before(:each) do
    visit '/'
  end

  scenario "User visits /" do
    expect(page).to have_content("MMORPS")

    expect(page).to have_content("Player")
    expect(page).to have_content("Computer")

    expect(page).to have_content("Choose!")

    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end
end
