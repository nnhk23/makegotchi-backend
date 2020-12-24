class CreateUserPets < ActiveRecord::Migration[6.0]
  def change
    create_table :user_pets do |t|
      t.string :name
      t.integer :happiness_score, default: 100
      t.datetime :last_fed
      t.datetime :last_slept
      t.datetime :last_cleaned
      t.references :user, null: false, foreign_key: true
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
