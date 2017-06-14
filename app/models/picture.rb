class Picture < ApplicationRecord
	belongs_to :picturable, polymorphic: true, inverse_of: :picturable
  	mount_uploader :file, PictureUploader
end
