class Checkout < ActiveRecord::Base
  belongs_to :book
  validates_presence_of :checkout_date
  validates_presence_of :return_date
  validates :book_id, presence: true,
    numericality: { only_integer: true }
end
