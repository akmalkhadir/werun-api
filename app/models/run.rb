class Run < ApplicationRecord
  belongs_to :host, class_name: 'Runner', foreign_key: :runner_id
  has_many :runner_runs
  has_many :attendees, through: :runner_runs, source: :runner
end
