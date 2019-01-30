class User < ApplicationRecord
  has_many :comments
  has_many :subcomments
  has_many :links
end
