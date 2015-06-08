class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |q|
      q.text :questions
      q.integer :survey_id
      q.timestamps
    end
  end
end
