class CreateAdsPanels < ActiveRecord::Migration
  def change
    create_table :ads_panels do |t|
      t.string :name
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
