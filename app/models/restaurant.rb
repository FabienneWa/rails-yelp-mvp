class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates_inclusion_of :category, :in => ['chinese', 'italian', 'japanese', 'french', 'belgian'], :allow_nil => false
  validates :name, presence: true
  validates :address, presence: true
end
