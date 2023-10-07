# == Schema Information
#
# Table name: properties
#
#  id               :bigint           not null, primary key
#  user_id          :bigint           not null
#  type_offer_id    :bigint           not null
#  type_property_id :bigint           not null
#  description      :text
#  area             :integer
#  price            :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class PropertyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
