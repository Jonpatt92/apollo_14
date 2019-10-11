class AstronautsController < ApplicationController
  def index
    @astronauts = Astronaut.all
  end

  # def self.average_age
  #   Astronaut.average(:age)
  # end
end
