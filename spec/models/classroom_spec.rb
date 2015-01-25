require 'rails_helper'

describe Classroom do
  describe "Create Classroom" do
  	it "object classroom create is valid?" do
	    classroom = Classroom.new({ 
	      student_id: 1,
	      course_id: 1,
	      entry_at: "2015-01-25 13:20:30"
	    })

	    expect(classroom).to be_valid
	  end
  end
end
