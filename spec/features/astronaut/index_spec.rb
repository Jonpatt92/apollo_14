# As a visitor,
# When I visit '/astronauts'
# I see a list of astronauts with the following info:
# - Name
# - Age
# - Job
require 'rails_helper'

describe 'When I visit /astronauts' do
  it 'I see a list of astronauts with the following info:' do

    visit '/astronauts'

    expect(page).to have_content("")
  end
end
