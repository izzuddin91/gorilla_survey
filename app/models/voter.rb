class Voter < ActiveRecord::Base

has_many :results
  # Remember to create a migration!
end
