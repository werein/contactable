module Contactable
  class Contact
    include ActiveModel::Conversion
    extend ActiveModel::Naming
    extend ActiveModel::Translation
    include ActiveModel::Validations

    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/

    attr_accessor :name, :email, :subject, :body

    validates :name, :subject, :body, presence: true
    validates :email, presence: true,
              format: { with: EMAIL_REGEX }
    
    def initialize args = {}
      @name     = args[:name]
      @email    = args[:email]
      @subject  = args[:subject]
      @body     = args[:body]
    end

    def persisted?
      false
    end
  end
end