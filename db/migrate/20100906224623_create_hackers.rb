class CreateHackers < ActiveRecord::Migration
  def self.up
    #create_table :hackers, :id => false, :options => "DEFAULT CHARSET=utf8" do |t|
    create_table :hackers, :id => false do |t|
      t.string :uuid, :limit => 36, :primary => true
      t.string :nickname, :limit => 100
      t.string :first_name, :limit => 100
      t.string :last_name, :limit => 100
      t.string :ipv4_address, :limit => 50
      t.timestamps
    end
  end

  def self.down
    drop_table :hackers
  end
end
