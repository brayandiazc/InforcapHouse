require 'csv'

puts 'Importing typeProperties...'
CSV.foreach(Rails.root.join('db/seeds/csv/typeProperties.csv'), headers: true) do |row|
  TypeProperty.create! do |type_property|
    type_property.id = row[0]
    type_property.name = row[1]
  end
end