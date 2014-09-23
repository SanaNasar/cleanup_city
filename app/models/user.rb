class User < ActiveRecord::Base
  # attr_accessor :avatar
  # attr_accessor :avatar_file_name
  
  has_secure_password # for hand written rails oauth
  has_many :posts
  has_many :images

  validates :first_name, presence: true
#   validates :avatar,
#     attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
#     attachment_size: { less_than: 5.megabytes }

#   has_attached_file :avatar, 
#   styles:{
#     thumb: '100x100>',
#     square: '200x200>',
#     medium: '300x300>'
#   }

# # Validate the attached image is image/jpg, image/png, etc
#   validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
