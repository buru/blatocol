require 'rubygems'
require 'uuidtools'
 
module UUIDHelper
  def self.included(base)
    base.class_eval do
      before_create :set_uuid

      def set_uuid
        self.uuid = UUIDTools::UUID.random_create().to_s
      end
    end
  end
end

