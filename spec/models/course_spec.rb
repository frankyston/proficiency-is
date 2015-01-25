require 'rails_helper'

describe Course do
  describe "Create Course" do
  	it "object course create is valid?" do
	    course = Course.new({ 
	      name: "Redes de Computadores",
	      description: "Fazendo computadores conversarem",
	      status: ""
	    })

	    expect(course).to be_valid
	  end
  end
end
