class CreateAdmissions < ActiveRecord::Migration
  def self.up
    create_table :admissions do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :image_url
      t.string :screen_name

      t.timestamps
    end
  end

  def self.down
    drop_table :admissions
  end
end
