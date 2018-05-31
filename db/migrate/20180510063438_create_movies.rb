class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string   :name
      t.string   :director
      t.string   :actor
      t.string   :release
      t.float    :rating
      t.boolean  :youth

      t.timestamps null: false
    end
  end
end
