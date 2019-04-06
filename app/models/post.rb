class Post < ActiveRecord::Base
  validates :title
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
end
