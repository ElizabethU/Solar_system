class ArticlesController < ApplicationController
  require 'uri'
  layout false

  def events
  end

  def search
    params[:query]
    feed = Feedjira::Feed.fetch_and_parse("https://news.google.com/news/feeds?q=#{URI.escape(params[:body_name])}+nasa&output=rss")
    @array = feed.entries.map {|entry| NewsFormatter.new(entry).article }
  end
end
