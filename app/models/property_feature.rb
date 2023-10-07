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
class PropertyFeature < ApplicationRecord
  # Relaciones
  belongs_to :property
  belongs_to :feature

  # Validaciones
  validates :property, :feature, presence: true
end
