class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :content
      t.integer :user_id
      t.integer :chatroom_id
      t.datetime :posted_at

      t.timestamps null: false
    end
  end
end
