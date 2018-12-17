class CreateRuns < ActiveRecord::Migration[5.2]
  def change
    create_table :runs do |t|
      t.string :name
      t.string :description
      t.string :start_location
      t.string :end_location
      t.datetime :date
      t.float :distance
      t.boolean :private

      t.timestamps
    end
  end
end
