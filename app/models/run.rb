class Run < ApplicationRecord
  belongs_to :host, class_name: 'Runner', foreign_key: :runner_id
  has_many :runners_runs
  has_many :attendees, through: :runners_runs, source: :runner

  validates :name, :description, :start_location, :end_location, :date, presence: true
  validates :is_private, inclusion: {in: [true, false]}
  validates :distance, numericality: true
end
