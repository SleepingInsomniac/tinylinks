class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :short, unique: true, null: false
      t.string :full, null: false
      t.boolean :enabled, default: true
      
      t.timestamps null: false
    end
  end
end
