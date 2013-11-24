class CreateAdsCampaigns < ActiveRecord::Migration
  def change
    create_table :ads_campaigns do |t|
      t.string :name
      t.string :advertiser

      t.timestamps
    end
  end
end
