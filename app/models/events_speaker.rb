class EventsSpeaker < ActiveRecord::Base
  attr_accessible :event_id, :speaker_id

  belongs_to :event
  belongs_to :speaker
end
