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
    @apollo_14 = @buzz.missions.create(title: "Apollo 14", time_in_space: 15)
    @apollo_13 = @buzz.missions.create(title: "b Apollo 13", time_in_space: 13)
    @cassini = @neil.missions.create(title: "Cassini", time_in_space: 10)
    @juno = @neil.missions.create(title: "Juno", time_in_space: 16)
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

  it 'On /astronauts I see the missions in alphabetical order for each astronaut' do
    visit '/astronauts'
    save_and_open_page
    expect(page).to have_content("Apollo 14")
    expect(page).to have_content("Apollo 13")
    expect(page).to have_content("Cassini")
    expect(page).to have_content("Juno")
    expect(page).to have_content("Total time in space: 28")
    expect(page).to have_content("Total time in space: 26")



  end
end
