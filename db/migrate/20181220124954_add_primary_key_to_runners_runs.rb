class AddPrimaryKeyToRunnersRuns < ActiveRecord::Migration[5.2]
  def change
    add_column :runners_runs, :id, :primary_key
  end
end
