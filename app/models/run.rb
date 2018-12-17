class Run < ApplicationRecord
  belongs_to :host, class_name: 'Runner', foreign_key: :runner_id
  has_many :runners_runs
  has_many :attendees, through: :runners_runs, source: :runner
end
