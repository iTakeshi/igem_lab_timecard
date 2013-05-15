class AddAttendancePlanToUsers < ActiveRecord::Migration
  def change
    add_column :users, :attendance_plan, :datetime
  end
end
