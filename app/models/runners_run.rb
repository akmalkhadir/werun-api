class RunnersRun < ApplicationRecord
  belongs_to :runner
  belongs_to :run

  validates_uniqueness_of :runner_id, :scope => :run_id
end
