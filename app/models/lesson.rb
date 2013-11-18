class Lesson < ActiveRecord::Base
	belongs_to :lesson_type
	has_many :teachings
end
