class Api::V1::RunnerSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :bio, :city, :image_url
  has_many :upcoming_runs, key: :upcomingRuns
  has_many :past_runs, key: :pastRuns
  has_many :attended_runs, serializer: Api::V1::RunSerializer


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
