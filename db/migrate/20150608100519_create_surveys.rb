class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |s|
      s.string :title
      s.integer :creator_id
      s.timestamps
    end
  end
end
