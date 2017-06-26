class Product < ApplicationRecord
	belongs_to :group

	has_attached_file :picture, styles: { medium: '300x300>', thumb: '50x50' }, default_url: '/images/:style/missing.jpg'
  	validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  	has_many :pictures, as: :picturable, inverse_of: :picturable

    accepts_nested_attributes_for :pictures, allow_destroy: true

end
  
