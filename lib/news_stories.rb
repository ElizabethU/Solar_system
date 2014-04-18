class NewNews
  def initialize
    @bodies = Body.find_by(current: true)
  end

  def update
    @bodies.each do |body|
      feed = Feedjira::Feed.fetch_and_parse("https://news.google.com/news/feeds?q=#{body.name}+nasa&output=rss")

      next if feed.entries.count == 0

      feed.entries.each do |article|
        if already_article(article.title)
          if already_article_for_planet(article.title, body)
            next
          end

          redundant_article = Article.find_by(title: article.title)
          BodyArticle.create(article_id: redundant_article.id, body_id: body.id)
          
        end
        new_article = Article.create(title: article.title, url: article.url, summary: article.summary, date: article.date)

        BodyArticle.create(article_id: new_article.id, body_id: body.id)
      end
    end
  end

  def already_article(title)
    Article.where(title: title).count != nil
  end

  def already_article_for_planet(title, planet)
    article = Article.find_by(title: title)
    BodyArticle.find_by(article_id: article.id and body_id: planet.id).count != nil
  end
end