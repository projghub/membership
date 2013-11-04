class CoursesSpeaker < ActiveRecord::Base
  attr_accessible :course_id, :speaker_id

  belongs_to :course
  belongs_to :speaker
end
