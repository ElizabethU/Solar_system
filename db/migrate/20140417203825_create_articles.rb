class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :title
      t.string :url
      t.text :summary
      t.datetime :date

      t.timestamps
    end
  end
end
