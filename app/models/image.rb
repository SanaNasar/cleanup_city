class Image < ActiveRecord::Base
  attr_accessor :trash

  validates :trash,
    attachment_content_type: { content_type: /\Aimage\/.*\Z/ },
    attachment_size: { less_than: 5.megabytes }


  has_attached_file :trash, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

end
