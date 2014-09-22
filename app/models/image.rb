class Image < ActiveRecord::Base
  attr_accessible :trash

  has_attached_file :trash, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  add_attachment :images, :trash

end
