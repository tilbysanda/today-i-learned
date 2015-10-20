class Post < ActiveRecord::Base

  class << self
    def valid_categories
      %w(trick tutorial lifestyle resource)
    end
  end

  # Validations
  validates :category, inclusion: { in: self.valid_categories, message: "%{value} is not a valid category: #{self.valid_categories.join(", ")}"  }
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
