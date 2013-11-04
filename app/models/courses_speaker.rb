class CoursesSpeaker < ActiveRecord::Base
  belongs_to :course
  belongs_to :speaker
end
