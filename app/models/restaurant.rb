class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # if have a restaurant, I can do restaurant.reviews
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: ["Chinese", "Italian", "Japanese", "French", "Belgian"] }

end

# Inclusion Validations
# https://human-se.github.io/rails-demos-n-deets-2021/demos/validations-inclusion/
