class NewNews
  def initialize
    @bodies = Body.find_by(current: true)
  end

  def update
    @bodies.each do |body|
      feed = Feedjira::Feed.fetch_and_parse("https://news.google.com/news/feeds?q=#{body.name}nasa&output=rss")

      next if feed.entries.count == 0

      feed.entries.each do |article|
        Article.create(title: article.title, url: article.url, summary: article.summary, date: article.date)

      end
    end
  end

  def already_article(title)
    Article.where(title: title).count > 0
  end

  def alread_article_for_planet(title, planet)
    article = Article.find_by(title: title)
    BodyArticle
  end
end