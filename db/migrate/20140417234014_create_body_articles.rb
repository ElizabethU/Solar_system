class CreateBodyArticles < ActiveRecord::Migration
  def change
    create_table :body_articles do |t|
      t.integer :body_id
      t.integer :article_id

      t.timestamps
    end
  end
end
