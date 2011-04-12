class Talk < ActiveRecord::Base
  scope :accepted, where(:accepted => true)
  validates_presence_of :title, :summary, :person
end
