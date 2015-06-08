class Survey < ActiveRecord::Base
  belongs_to :creator
  has_many :questions
  # Remember to create a migration!
end

