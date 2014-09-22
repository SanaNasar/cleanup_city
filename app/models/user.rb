class User < ActiveRecord::Base
  has_secure_password # for hand written rails oauth

    has_many :posts
end
