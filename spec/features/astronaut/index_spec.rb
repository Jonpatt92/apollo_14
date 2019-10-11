# As a visitor,
# When I visit '/astronauts'
# I see a list of astronauts with the following info:
# - Name
# - Age
# - Job
require 'rails_helper'

describe 'When I visit /astronauts' do
  it 'I see a list of astronauts with the following info:' do
    @neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
    @buzz = Astronaut.create(name: "Buzz Aldrin", age: 40, job: "Pilot")

    visit '/astronauts'
    save_and_open_page
    expect(page).to have_content("Neil Armstrong")
    expect(page).to have_content("Buzz Aldrin")
    expect(page).to have_content("Commander")
    expect(page).to have_content("Pilot")
    expect(page).to have_content(37)
    expect(page).to have_content(40)


  end
end
