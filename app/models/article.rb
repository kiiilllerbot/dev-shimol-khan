class Article < ApplicationRecord
  belongs_to :user
  acts_as_votable
  
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  
  before_create -> (article) do
    article.slug = article.title.parameterize
  end

  validates_presence_of :title, :body, :image_link
end
