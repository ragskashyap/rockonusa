class CreatePastprojects < ActiveRecord::Migration
  def self.up
    create_table :pastprojects do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :pastprojects
  end
end
