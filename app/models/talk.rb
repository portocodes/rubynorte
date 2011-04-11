class Talk < ActiveRecord::Base
  scope :accepted, where(:accepted => true)
end
