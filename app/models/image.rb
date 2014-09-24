class Image < ActiveRecord::Base
  attr_accessor :trash
  attr_accessor :note

  validates :trash,
    attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
    attachment_size: { less_than: 5.megabytes }


  # has_attached_file :trash, styles: {

  #   thumb: '100x100>',
  #   square: '200x200#',
  #   medium: '300x300>'
  # }

  has_attached_file :trash,
  :styles => { :medium => "300x300>", :thumb => "100x100>", :square =>"200x200#"},
  :storage => :s3,
  :bucket => ENV['AWS_BUCKET_NAME'],
  :default_url => '/images/:attachment/missing_:style.png',
  :url =>':s3_domain_url',
  :path => '/:class/:attachment/:id_partition/:style/:filename'

end

