class Book < ActiveRecord::Base
  has_many :checkouts
  has_many :categorizations
  has_many :categories, through: :categorizations
  validates_presence_of :title
  validates :rating,
    numericality: { only_integer: true },
    allow_blank: true,
    inclusion: { in: 0..100 }

  class << self
    def seed
      find_or_create_by(title: 'Purple Cow', author: 'Seth Godin')
      find_or_create_by(title: 'Moby Dick', author: 'Herman Melville', rating: 85)
      find_or_create_by(title: 'Fahrenheit 451', author: 'Ray Bradbury', rating: 90)
    end
  end

end
