class Speaker < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  has_many :courses_speakers
  has_many :courses, through: :courses_speakers
  has_many :events_speakers
  has_many :events, through: :events_speakers

  def to_s
    [self.first_name, self.last_name].join(' ')
  end
end
