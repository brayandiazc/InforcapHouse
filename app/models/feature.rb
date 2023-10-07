# == Schema Information
#
# Table name: features
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Feature < ApplicationRecord
  # Validaciones
  validates :name, presence: true, uniqueness: true

  # Relaciones
  has_many :property_features, dependent: :destroy
  has_many :properties, through: :property_features
end
