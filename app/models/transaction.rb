class Transaction < ApplicationRecord
  validates :name, presence: true, length: { in: 4..30 },
                   uniqueness: true
  validates :description, presence: true, length: { in: 8..120 }
  validates :amount, presence: true, numericality: true
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :group, optional: true

  scope :in_u_g, -> { includes(:user, :group) }
  scope :dsc, -> { order('created_at DESC') }
end
