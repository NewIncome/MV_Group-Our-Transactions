class Transaction < ApplicationRecord
  validates :name, presence: true, length: { in: 4..30 },
                    uniqueness: true
  validates :description, presence: true, length: { in: 8..120 }
  validates :amount, presence: true
  validates :user_id, presence: true
  validates :group_id, presence: true, allow_nil: true

  belongs_to :user
  belongs_to :group
end
