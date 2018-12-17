class Api::V1::RunnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :username
  has_many :upcoming_runs, key: :upcomingRuns
  has_many :past_runs, key: :pastRuns


  def name
    "#{self.object.first_name} #{self.object.last_name}"
  end

  def upcoming_runs
    self.object.attended_runs.select{ |run| run.date > DateTime.current }
  end

  def past_runs
    self.object.attended_runs.select{ |run| run.date < DateTime.current }
  end

end
