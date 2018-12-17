class AddRunnerToRuns < ActiveRecord::Migration[5.2]
  def change
    add_reference :runs, :runner, foreign_key: true
  end
end
