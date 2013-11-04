Admin::Course.create!(name: 'Course 1')
Admin::Course.create!(name: 'Course 2')

Admin::Event.create!(name: 'Event 1')
Admin::Event.create!(name: 'Event 2')

Admin::Speaker.create!(first_name: 'John', last_name: 'Doe')
Admin::Speaker.create!(first_name: 'Jane', last_name: 'Doe')

CoursesSpeaker.create!(course_id: 1, speaker_id: 1)
EventsSpeaker.create!(event_id: 1, speaker_id: 1)
CoursesSpeaker.create!(course_id: 2, speaker_id: 2)
EventsSpeaker.create!(event_id: 2, speaker_id: 2)
