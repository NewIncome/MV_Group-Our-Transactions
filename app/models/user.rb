class User < ApplicationRecord
  validates :name, presence: true, length: { in: 4..30 },
                    uniqueness: true

end
