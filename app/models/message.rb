class Message < ActiveRecord::Base
  set_primary_key "uuid"
  include UUIDHelper

  belongs_to :hacker
end
