class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :name
      t.decimal :price
    end
  end
end
