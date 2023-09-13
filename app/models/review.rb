class Review < ApplicationRecord
  belongs_to :restaurant
  # if I have a review, then I can do review.restaurant
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end


# Active Record Validations
# https://guides.rubyonrails.org/active_record_validations.html#message

# Rails 6.1 adds support for validating numeric values fall in a range using `in:` option
# https://blog.saeloun.com/2021/02/05/add-validate-numericality-in-range/
