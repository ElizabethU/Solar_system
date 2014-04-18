class BodyArticle < ActiveRecord::Base
  belongs_to :body
  belongs_to :article
end
