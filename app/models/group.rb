class Group < ApplicationRecord
	has_many :products, dependent: :destroy

	accepts_nested_attributes_for :products
	
	validates :title, presence: true,
                    length: { minimum: 3 }
end
