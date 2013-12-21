class Category < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  class << self
    def seed
      find_or_create_by(name: 'Fiction')
      find_or_create_by(name: 'Romance')
      find_or_create_by(name: 'Fantasy')
      find_or_create_by(name: 'Science Fiction')
    end
  end
end
