class CreateCoursesSpeakers < ActiveRecord::Migration
  def change
    create_table :courses_speakers do |t|
      t.integer :course_id
      t.integer :speaker_id

      t.timestamps
    end
  end
end
