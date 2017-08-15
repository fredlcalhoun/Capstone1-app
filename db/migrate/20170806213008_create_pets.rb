class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.integer :user_id
      t.string :lost_or_found
      t.string :name
      t.string :animal
      t.string :breed
      t.string :color
      t.string :city
      t.string :state
      t.string :neighborhood
      t.string :description
      t.datetime :time

      t.timestamps
    end
  end
end
