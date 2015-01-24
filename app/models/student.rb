class Student < ActiveRecord::Base
	has_many :classrooms

	validates :name, presence: true
	validates :register_number, presence: true
	validates :status, presence: true

end
