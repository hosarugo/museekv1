class Advertisement < ApplicationRecord

  belongs_to :user
  has_many :photos


  validates :main_category, presence: true

  validates :category, presence: true

  validates :listing_name, presence: true, length: {maximum: 75}

  validates :title, presence: true, length: {maximum: 75}

  validates :description, presence: true, length: {maximum: 600}

  validates :address, presence: true

  validates :price, numericality: { only_integer: true, greater_than: 5 }


  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
