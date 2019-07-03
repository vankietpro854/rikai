class Cour < ApplicationRecord
	validates :name,  presence: true, length: { maximum: 60 }
	has_many :chapters
end
