class Runner < ApplicationRecord
  has_many :runs
  has_many :runner_runs
  has_many :attended_runs, through: :runner_runs, source: :run
end
