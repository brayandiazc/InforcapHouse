# == Schema Information
#
# Table name: property_features
#
#  id          :bigint           not null, primary key
#  property_id :bigint           not null
#  feature_id  :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class PropertyFeatureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
