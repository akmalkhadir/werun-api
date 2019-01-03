# frozen_string_literal: true

class Api::V1::RunSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :distance, :attendees, :image_url
  attribute :start_location, key: :startLocation
  attribute :end_location, key: :endLocation
  attribute :is_private, key: :isPrivate
  attribute :host
  attribute :start_coordinates
  attribute :end_coordinates

  def host
    {
      hostId: object.host.id,
      hostUsername: object.host.username
    }
  end

  def start_coordinates
    {
      lat: object.start_lat,
      lng: object.start_lng
    }
  end

  def end_coordinates
    {
      lat: object.end_lat,
      lng: object.end_lng
    }
  end
end
