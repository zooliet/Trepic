class CreateDummies < ActiveRecord::Migration
  def change
    create_table :dummies do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
