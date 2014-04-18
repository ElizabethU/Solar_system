class Body < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :name, presence: true
  has_many :body_articles
  has_many :articles, through: :body_articles
end
