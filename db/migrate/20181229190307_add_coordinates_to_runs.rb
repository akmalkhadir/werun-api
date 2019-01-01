class AddCoordinatesToRuns < ActiveRecord::Migration[5.2]
  def change
    add_column :runs, :start_lat, :decimal, {:precision=>10, :scale=>6}
    add_column :runs, :start_lng, :decimal, {:precision=>10, :scale=>6}
    add_column :runs, :end_lat, :decimal, {:precision=>10, :scale=>6}
    add_column :runs, :end_lng, :decimal, {:precision=>10, :scale=>6}
  end
end
