# frozen_string_literal: true

class Runner < ApplicationRecord
  has_secure_password
  has_many :runs
  has_many :runners_runs
  has_many :attended_runs, through: :runners_runs, source: :run
  
  def self.from_token_payload(payload)
    payload['sub']
  end
end
