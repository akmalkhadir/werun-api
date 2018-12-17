class CreateJoinTableRunnersRuns < ActiveRecord::Migration[5.2]
  def change
    create_join_table :runners, :runs do |t|
       t.index [:runner_id, :run_id]
       t.index [:run_id, :runner_id]
    end
  end
end
