class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.string :name
      t.text :best_track
      t.integer :size
      t.integer :from_year
      t.integer :to_year
      t.integer :number_of_shows
      t.string :kind
      t.string :instruments
      t.text :image

      t.timestamps
    end
  end
end
