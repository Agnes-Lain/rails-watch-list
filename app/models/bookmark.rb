class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :list_id, uniqueness: { scope: :movie_id,
  message: "This movie has already been stocked in your choosen list 📌" }

  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }

end
