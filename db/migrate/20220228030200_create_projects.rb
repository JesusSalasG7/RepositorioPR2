class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :code
      t.date :start_date
      t.string :name
      t.decimal :value
      t.references :client, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
