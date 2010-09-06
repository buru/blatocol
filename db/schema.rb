# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100906224623) do

  create_table "hackers", :id => false, :force => true do |t|
    t.string   "uuid",         :limit => 36
    t.string   "nickname",     :limit => 100
    t.string   "first_name",   :limit => 100
    t.string   "last_name",    :limit => 100
    t.string   "ipv4_address", :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :id => false, :force => true do |t|
    t.string   "uuid",                   :limit => 36
    t.string   "text",                   :limit => 560
    t.string   "hacker_id",              :limit => 36
    t.string   "in_reply_to_message_id", :limit => 36
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["created_at"], :name => "index_messages_on_created_at"
  add_index "messages", ["hacker_id"], :name => "index_messages_on_hacker_id"

end
