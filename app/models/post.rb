class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Nonfiction) }

  def validate
    self.include?("Won't Believe") || self.include?( "Secret") || self.include?("Top [number]") || self.include?("Guess")
  end
end
