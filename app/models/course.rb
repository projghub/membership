class Course < ActiveRecord::Base
  attr_accessible :name, :publish, :speaker_ids

  has_many :courses_speakers
  has_many :speakers, through: :courses_speakers

  def to_s
    self.name
  end
end
