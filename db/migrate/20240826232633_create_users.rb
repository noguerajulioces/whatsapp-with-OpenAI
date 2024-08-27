class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_number
      t.jsonb :settings

      t.timestamps
    end
    add_index :users, :phone_number, unique: true
  end
end
