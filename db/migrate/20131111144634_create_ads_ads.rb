class CreateAdsAds < ActiveRecord::Migration
  def change
    create_table :ads_ads do |t|
      t.references :campaign, index: true
      t.references :banner, index: true
      t.string :link
      t.string :file
      t.integer :display_count
      t.datetime :start_date
      t.datetime :end_date
      t.datetime :disable, index: true

      t.timestamps
    end
  end
end
