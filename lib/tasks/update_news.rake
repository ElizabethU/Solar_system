require 'news_stories.rb'

namespace "news" do
  desc 'This is the description shown when you run "rake -T"'
  task 'articles' => :environment do |t|
    news = NewNews.new
    news.update
  end
end