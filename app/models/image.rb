class Image < ApplicationRecord
  has_one_attached :landscape
  has_one_attached :thumbnail
end
