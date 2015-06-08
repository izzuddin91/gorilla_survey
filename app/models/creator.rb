class Creator < ActiveRecord::Base
  # Remember to create a migration!
  has_many :surveys
  has_many :results
end
