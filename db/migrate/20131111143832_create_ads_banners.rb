class CreateAdsBanners < ActiveRecord::Migration
  def change
    create_table :ads_banners do |t|
      t.string :name
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
