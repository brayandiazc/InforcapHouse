# frozen_string_literal: true

# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "propertyFeatures.rb"))'
puts 'Importing propertyFeatures...'

1000.times do
  PropertyFeature.create(
    property_id: Property.all.sample.id,
    feature_id: Feature.all.sample.id,
  )
end
