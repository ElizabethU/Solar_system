class AddNiceName < ActiveRecord::Migration
  def change
    add_column :bodies, :nice_name, :string
  end
end
