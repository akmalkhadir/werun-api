class Api::V1::RunSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :distance
  attribute :start_location, key: :startLocation
  attribute :end_location, key: :endLocation
  attribute :is_private, key: :isPrivate
  attribute :host
  has_many :attendees

  def host
    {
      hostId: self.object.host.id,
      hostUsername: self.object.host.username
    }
  end

end
