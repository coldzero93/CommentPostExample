class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string   :name
      t.string   :email
      t.integer  :age
      t.boolean  :married

      t.timestamps null: false
    end
  end
end
