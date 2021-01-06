class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :password_digest
      t.integer :plays_left, default: 5
      t.integer :money, default: 500
      t.timestamps
    end
  end
end
