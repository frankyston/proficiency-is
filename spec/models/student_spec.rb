require 'rails_helper'

describe Student do
  describe "Create Student" do
  	it "object student create is valid?" do
	    student = Student.new({ 
	      name: "Frankyston Lins",
	      register_number: "112233",
	      status: "1"
	    })

	    expect(student).to be_valid
	  end
  end
end
