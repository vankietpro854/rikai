class User < ApplicationRecord

  validates :name,  presence: true, length: { maximum: 60 }
  validates :image, :address, length: {maximum: 255}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  validates :phone, presence: true, length: { maximum: 10 }

  validates :date, presence: true
  has_many :reports
end
