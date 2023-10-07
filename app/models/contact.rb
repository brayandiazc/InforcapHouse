# == Schema Information
#
# Table name: contacts
#
#  id         :bigint           not null, primary key
#  name       :string
#  email      :string
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Contact < ApplicationRecord
  # Validaciones
  validates :name,    presence: true
  validates :email,   presence: true,
                      format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :message, presence: true
end
