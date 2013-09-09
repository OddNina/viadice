class NewsItem < ActiveRecord::Base

  belongs_to :group, inverse_of: :news_items
  validates_presence_of :headline, :content
end
