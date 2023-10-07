class CreatePropertyFeatures < ActiveRecord::Migration[7.1]
  def change
    create_table :property_features do |t|
      t.references :property, null: false, foreign_key: true
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
