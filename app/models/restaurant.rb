class Restaurant < ApplicationRecord
  validates :name, :address, :category, presence: true
  # validates_inclusion_of :category, in: ["chinese", "italian", "japanese", "french", "belgian"]
  validates :category, inclusion: { in:["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews, dependent: :destroy
end
