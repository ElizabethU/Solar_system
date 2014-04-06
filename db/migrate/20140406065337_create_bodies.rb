class CreateBodies < ActiveRecord::Migration
  def change
    create_table :bodies do |t|
      t.string :name
      t.float :diameter
      t.string :color
      t.float :x
      t.float :y
      t.float :z

      t.timestamps
    end
  end
end
