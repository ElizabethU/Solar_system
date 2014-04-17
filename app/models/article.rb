class Article < ActiveRecord::Base
  validates :title, uniqueness: true
  validates :title, presence: true
  validates :url, presence: true
  validates :summary, presence: true
  validates :date, presence: true
end
