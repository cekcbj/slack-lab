class CreateChatrooms < ActiveRecord::Migration
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.integer :user_id
      t.integer :message_id

      t.timestamps null: false
    end
  end
end
