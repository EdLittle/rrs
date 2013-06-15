# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  building_id :integer
#  capacity    :integer
#  rate        :decimal(, )
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Room do
  pending "add some examples to (or delete) #{__FILE__}"
end
