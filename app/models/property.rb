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
class Property < ApplicationRecord
  # Relaciones
  belongs_to :user
  belongs_to :type_offer
  belongs_to :type_property
  # Relaciones
  has_many :property_features, dependent: :destroy
  has_many :features, through: :property_features

  # Validaciones
  validates :description, presence: true
  validates :area, presence: true
  validates :price, presence: true
end
