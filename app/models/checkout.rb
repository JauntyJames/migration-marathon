class Checkout < ActiveRecord::Base
  belongs_to :book
  belongs_to :reader

  validates :book, presence: true
end
