class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |v|
      v.string :name
      v.string :password
      v.timestamps
    end
  end
end
