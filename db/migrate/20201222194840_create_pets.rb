class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :species
      t.integer :hunger_rate
      t.integer :sleepy_rate
      t.integer :dirt_rate
      t.string :img_url
      t.string :img_icon
      t.string :personality

      t.timestamps
    end
  end
end
