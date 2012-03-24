class CreateMessages < ActiveRecord::Migration
  def self.up
    #create_table :messages, :id => false, :options => "DEFAULT CHARSET=utf8" do |t|
    create_table :messages, :id => false do |t|
      t.string :uuid, :limit => 36, :primary => true
      t.string :text, :limit => 560
      t.string :hacker_id, :limit => 36
      t.string :in_reply_to_message_id, :limit => 36
      t.timestamps
    end
    add_index :messages, :hacker_id
    add_index :messages, :created_at
  end

  def self.down
    drop_table :messages
  end
end
