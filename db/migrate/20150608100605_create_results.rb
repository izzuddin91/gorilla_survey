class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |r|
      r.integer :question_id
      r.integer :answer_id
      r.integer :voter_id
      r.integer :creator_id
      r.timestamps
    end
  end
end
