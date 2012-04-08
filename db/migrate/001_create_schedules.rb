class CreateSchedules < ActiveRecord::Migration
  def self.up
    create_table :schedules do |t|
      t.column :issue_id, :integer
      t.column :scheduled_date, :date
      t.column :hours, :float
      t.timestamps
    end
  end

  def self.down
    drop_table :schedules
  end
end
