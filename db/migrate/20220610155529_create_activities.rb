class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :activity
      t.string :day_of_week
      t.string :instructor
      t.integer :resident_id
    end
  end
end
