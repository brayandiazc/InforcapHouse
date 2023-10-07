# frozen_string_literal: true

# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "properties.rb"))'
puts 'Importing properties...'

100.times do
  Property.create(
    user_id: User.all.sample.id,
    type_offer_id: TypeOffer.all.sample.id,
    type_property_id: rand(1..5),
    description: Faker::Lorem.paragraph(sentence_count: 2),
    area: rand(50..200),
    price: rand(100_000..1_000_000)
  )
end
