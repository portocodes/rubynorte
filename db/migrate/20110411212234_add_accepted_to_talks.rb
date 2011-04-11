class AddAcceptedToTalks < ActiveRecord::Migration
  def self.up
    add_column :talks, :accepted, :boolean, :default => false
  end

  def self.down
    remove_column :talks, :accepted
  end
end
