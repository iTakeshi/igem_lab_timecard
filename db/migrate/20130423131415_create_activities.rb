class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :user, index: true, null: false
      t.integer    :type,              null: false

      t.timestamps
    end
  end
end
