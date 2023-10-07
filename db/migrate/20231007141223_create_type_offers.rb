class CreateTypeOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :type_offers do |t|
      t.string :name

      t.timestamps
    end
  end
end
