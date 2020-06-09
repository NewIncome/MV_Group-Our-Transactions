class Group < ApplicationRecord
  validates :name, presence: true, length: { in: 4..30 },
                   uniqueness: true

  has_many :transactions
  belongs_to :user
end
