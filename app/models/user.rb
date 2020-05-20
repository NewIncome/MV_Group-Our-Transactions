class User < ApplicationRecord
  before_save { self.name = name.camelize }
  before_save { self.icon = Faker::Avatar.image }

  validates :name, presence: true, length: { in: 4..30 },
                   uniqueness: true

  has_many :groups
  has_many :transactions
end
