class User < ActiveRecord::Base
  has_secure_password # for hand written rails oauth
  
  attr_accessor :avatar
  has_many :posts
  has_many :images

  has_attached_file :avatar,
  styles:{
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  },
    :bucket => ENV['AWS_BUCKET_NAME'],
    :storage => :s3,
    # :s3_host_name => 's3-us-west-1.amazonaws.com',
    :url => 's3_domain_url',
    :path => '/:class/:attachment:/:id_partition/:style/:filename',
    :s3_credentials =>{
      :access_key_id=> ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }


  validates_attachment_content_type :avatar, :content_type=> /\Aimage\/.*\Z/



end
