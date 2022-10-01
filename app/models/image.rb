class Image < ApplicationRecord
  has_one_attached :landscape
  has_one_attached :thumbnail

  def landscape_url
    Rails.application.routes.url_helpers.url_for(landscape) if landscape.attached?
  end
  
  def thumbnail_url
    Rails.application.routes.url_helpers.url_for(thumbnail) if thumbnail.attached?
  end
end
