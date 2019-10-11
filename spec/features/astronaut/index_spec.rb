# As a visitor,
# When I visit '/astronauts'
# I see a list of astronauts with the following info:
# - Name
# - Age
# - Job
require 'rails_helper'

describe 'When I visit /astronauts' do
  before(:each) do
    @neil = Astronaut.create(name: "Neil Armstrong", age: 30, job: "Commander")
    @buzz = Astronaut.create(name: "Buzz Aldrin", age: 40, job: "Pilot")
  end

  it 'I see a list of astronauts with the following info:' do

    visit '/astronauts'

    expect(page).to have_content("Neil Armstrong")
    expect(page).to have_content("Buzz Aldrin")
    expect(page).to have_content("Commander")
    expect(page).to have_content("Pilot")
    expect(page).to have_content(30)
    expect(page).to have_content(40)

  end

  it 'On /astronauts I see average age of all astronauts' do
    visit '/astronauts'
    within "#avg-age" do
      expect(page).to have_content("Average age of astronauts:")
      expect(page).to have_content(35)
    end
  end
end
