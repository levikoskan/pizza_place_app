class Review < ActiveRecord::Base
  belongs_to :pizza_place

  validates :title, presence: true, length: { minimum: 5 }
end
