class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :img
      t.string :cover
      t.float :rate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
