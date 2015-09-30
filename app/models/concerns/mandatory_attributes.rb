require 'active_support/concern'

module MandatoryAttributes
  extend ActiveSupport::Concern

  # Use for instance_methods
  # included do
  # end

  class_methods do
    def mandatory_attributes
      object = self.new
      object.valid?
      object.errors.messages
    end
  end
end

# include the extension into ActiveRecord::Base
ActiveRecord::Base.send(:include, MandatoryAttributes)
