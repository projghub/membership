class Event < ActiveRecord::Base
  attr_accessible :date, :name, :publish, :speaker_ids

  has_many :events_speakers
  has_many :speakers, through: :events_speakers

  def to_s
    self.name
  end
end
