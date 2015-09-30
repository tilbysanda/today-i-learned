class Post < ActiveRecord::Base
  # Validations
  validates :category, inclusion: { in: %w(trick tutorial lifestyle), message: "%{value} is not a valid category" }
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
