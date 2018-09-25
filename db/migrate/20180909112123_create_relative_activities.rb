class CreateRelativeActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :relative_activities do |t|
      t.date :entry_date
      t.integer :meditation
      t.integer :exercise
      t.integer :reading
      t.integer :concentration
      t.integer :hard_working
      t.integer :metal_stability
      t.integer :self_confidene
      t.integer :time_management
      t.integer :universal_power

      t.timestamps
    end
  end
end
