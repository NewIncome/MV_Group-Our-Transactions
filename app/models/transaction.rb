class Transaction < ApplicationRecord
  validates :name, presence: true, length: { in: 4..30 },
                    uniqueness: true
  validates :description, presence: true, length: { in: 8..120 }
  validates :amount, presence: true
  validates :user_id, presence: true

  belongs_to :user_id
end
