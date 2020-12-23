class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.integer :buys_left, default: 3

      t.timestamps
    end
  end
end
