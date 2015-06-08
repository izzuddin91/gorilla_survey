class Result < ActiveRecord::Base
  belongs_to :question
  belongs_to :answer
  belongs_to :voter
  belongs_to :creator
  belongs_to :voter
  # Remember to create a migration!
end
