class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |a|
      a.text :answer
      a.integer :question_id
      a.timestamps
    end
  end
end
