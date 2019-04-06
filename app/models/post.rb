class Post < ActiveRecord::Base
  validates :title
  validates :content, length: { minimum: 250 }
end
