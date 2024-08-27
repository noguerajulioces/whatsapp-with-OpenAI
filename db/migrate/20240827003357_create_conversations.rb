class CreateConversations < ActiveRecord::Migration[7.2]
  def change
    create_table :conversations do |t|
      t.references :user, null: false, foreign_key: true
      t.text :context

      t.timestamps
    end
  end
end
