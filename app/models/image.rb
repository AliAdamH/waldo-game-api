class Image < ApplicationRecord
  has_one_attached :landscape
  has_one_attached :thumbnail

  def landscape_url
    Rails.application.routes.url_helpers.url_for(landscape) if landscape.attached?
  end
  
  def thumbnail_url
    Rails.application.routes.url_helpers.url_for(thumbnail) if thumbnail.attached?
  end

# Meta-programming: easier than writing four methods manually
# where the only variation is the character name.
 %i[waldo wizard wilma odlaw].each do |character|
  define_method("#{character}_coords") do
    {
      upper_width: self.attributes["#{character}_width_upper"],
      lower_width: self.attributes["#{character}_width_lower"],
      upper_height: self.attributes["#{character}_height_upper"],
      lower_height: self.attributes["#{character}_height_lower"]
    }
  end
 end
end
