class CreateDisclaimers < ActiveRecord::Migration
  def self.up
    create_table :disclaimers do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :disclaimers
  end
end
