# As a visitor,
# When I visit '/astronauts'
# I see a list of astronauts with the following info:
# - Name
# - Age
# - Job
require 'rails_helper'

describe 'When I visit /astronauts' do
  it 'I see a list of astronauts with the following info:' do
    neil = Astronaut.new(Name: "Neil Armstrong", Age: 37, Job: "Commander")
    buzz = Astronaut.new(Name: "Buzz Aldrin", Age: 40, Job: "Pilot")

    visit '/astronauts'

    expect(page).to have_content("Neil Armstrong")
    expect(page).to have_content("Buzz Aldrin")
    expect(page).to have_content("Commander")
    expect(page).to have_content("Pilot")
    expect(page).to have_content(37)
    expect(page).to have_content(40)
    

  end
end
