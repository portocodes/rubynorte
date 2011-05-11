class AddConfirmedToAdmissions < ActiveRecord::Migration
  def self.up
    add_column :admissions, :confirmed, :boolean
    add_column :admissions, :confirmed_at, :datetime
  end

  def self.down
    remove_column :admissions, :confirmed_at
    remove_column :admissions, :confirmed
  end
end
