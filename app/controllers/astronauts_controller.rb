class AstronautsController < ApplicationController
  def index
    @astronauts = Astronaut.all
    @missions = Mission.all
  end

  # def self.average_age
  #   Astronaut.average(:age)
  # end
end
