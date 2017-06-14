class Group < ApplicationRecord
	has_many :products, dependent: :destroy
	validates :title, presence: true,
                    length: { minimum: 3 }
end
