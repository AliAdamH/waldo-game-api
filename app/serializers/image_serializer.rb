class ImageSerializer
  include JSONAPI::Serializer
  attributes :id, :title, :landscape, :landscape_url, :thumbnail_url, :best_score
end
