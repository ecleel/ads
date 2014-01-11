class CreateAdsStats < ActiveRecord::Migration
  def change
    create_table :ads_stats do |t|
      t.references :ad, index: true
      t.string :ip_address
      t.string :request_hash
      t.string :session_hash
      t.text :referer

      t.timestamps
    end
    add_index :ads_stats, :ip_address
    add_index :ads_stats, :request_hash
    add_index :ads_stats, :session_hash
  end
end
