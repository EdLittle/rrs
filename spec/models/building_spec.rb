# == Schema Information
#
# Table name: buildings
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  description    :text
#  street_address :string(255)
#

require 'spec_helper'

describe Building do
	before { @building = Building.new(
		name: "New Building",
		description: "Description here",
		street_address: "Address"
		)
	} 

	subject{ @building }
	it { should respond_to(:name) }
	it { should respond_to(:street_address) }
	it { should respond_to(:description) }
	it { should respond_to(:rooms) }
	it { should respond_to(:avrs) }
	it { should respond_to(:classrooms) }
	it { should respond_to(:faculty_offices) }
	it { should respond_to(:labs) }
	it { should respond_to(:libraries) }
	it { should respond_to(:theaters) }

end