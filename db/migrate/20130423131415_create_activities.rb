class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :user,          index: true, null: false
      t.integer    :activity_type,              null: false

      t.timestamps
    end
  end
end
