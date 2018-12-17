class Runner < ApplicationRecord
  has_secure_password
  has_many :runs
  has_many :runners_runs
  has_many :attended_runs, through: :runners_runs, source: :run
end
