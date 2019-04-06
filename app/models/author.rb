class Author < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :phone_number, length: { in: 10 }
end
