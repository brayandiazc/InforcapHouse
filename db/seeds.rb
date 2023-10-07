require 'csv'

puts 'Importing typeProperties...'
CSV.foreach(Rails.root.join('db/seeds/csv/typeProperties.csv'), headers: true) do |row|
  TypeProperty.create! do |type_property|
    type_property.id = row[0]
    type_property.name = row[1]
  end
end

puts 'Importing typeOffers...'
CSV.foreach(Rails.root.join('db/seeds/csv/typeOffers.csv'), headers: true) do |row|
  TypeOffer.create! do |type_offer|
    type_offer.id = row[0]
    type_offer.name = row[1]
  end
end