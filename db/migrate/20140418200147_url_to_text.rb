class UrlToText < ActiveRecord::Migration
  def change
    change_column :articles, :url, :text
  end
end
