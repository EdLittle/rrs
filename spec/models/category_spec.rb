# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Category do
	before { @category = Category.new(name: "Some name") }

	subject { @category }

	it { should respond_to(:name) }
	it { should respond_to(:rooms) }
	
end
