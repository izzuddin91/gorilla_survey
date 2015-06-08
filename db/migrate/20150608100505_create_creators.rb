class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |c|
      c.string :name
      c.string :password
      c.timestamps
    end
  end
end
