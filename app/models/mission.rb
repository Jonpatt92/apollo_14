class Mission < ApplicationRecord
  validates_presence_of :title, :time_in_space

  belongs_to :astronaut

  has_many :astronauts
  has_many :astronaut_missions
end
