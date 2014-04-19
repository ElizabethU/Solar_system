class NewsFormatter
  attr_accessor :article

  def initialize(article)
    @article = article
    @summary = Nokogiri.parse article.summary
    @summary.xpath('//@style').remove
    @article.image = extract_image
    @article.summary = parse_summary
  end

  def extract_image
    image = @summary.css("img[src]")
    unless image.blank?
      image.first.to_html
    end
  end

  def parse_summary
    summary = @summary.css("td.j").children.to_html
  end

  def to_json
    {title: article.title, image: article.image, summary: article.summary, url: article.url }
  end
end