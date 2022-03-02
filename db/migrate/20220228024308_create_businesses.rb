class CreateBusinesses < ActiveRecord::Migration[7.0]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :rif
      t.integer :phone
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
