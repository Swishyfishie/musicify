class CreateConcerts < ActiveRecord::Migration[6.0]
  def change
    create_table :concerts do |t|
      t.references :admin, null: false, foreign_key: true
      t.string :date
      t.string :time
      t.string :location
      t.string :country
      t.string :event_name
      t.string :other_info

      t.timestamps
    end
  end
end
