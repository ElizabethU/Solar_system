class Article < ActiveRecord::Base
  attr_accessor :image
  validates :title, uniqueness: true
  validates :title, presence: true
  validates :url, presence: true
  validates :summary, presence: true
  validates :date, presence: true
  has_many :body_articles
  has_many :bodies, through: :body_articles
end
