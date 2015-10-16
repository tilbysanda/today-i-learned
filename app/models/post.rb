class Post < ActiveRecord::Base
  # Validations
  valid_categories = %w(trick tutorial lifestyle resource)
  validates :category, inclusion: { in: valid_categories, message: "%{value} is not a valid category: #{valid_categories.join(", ")}"  }
  # validates :title, presence: true
  # validates :description, presence: true
  # validates :user, presence: true

  # Relations
  belongs_to :user

  # Acts_as_votable
  acts_as_votable

  # Acts_as_taggable
  acts_as_taggable
end
