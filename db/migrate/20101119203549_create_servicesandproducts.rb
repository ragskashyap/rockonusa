class CreateServicesandproducts < ActiveRecord::Migration
  def self.up
    create_table :servicesandproducts do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :servicesandproducts
  end
end
