class NewNews
  def initialize
    @bodies = Body.where(current: true)
  end

  def update
    @bodies.each do |body|
      feed = Feedjira::Feed.fetch_and_parse("https://news.google.com/news/feeds?q=#{body.name}nasa&output=rss")
    end
  end
end