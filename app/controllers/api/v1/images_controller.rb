class Api::V1::ImagesController < ApplicationController
  
  def index
    @images = Image.all
    render json: ImageSerializer.new(@images, fields: { image: %i[id title thumbnail_url] }).serializable_hash[:data]
  end

  def show
    @image = Image.find(params[:id])
    render json: ImageSerializer.new(@image, fields: { image: %i[landscape_url] }).serializable_hash[:data][:attributes]
  end

  def verify_coordinates
    image = Image.find(params[:id])
    answer = character_found(image)
    render json: answer.to_json
  end



  private

  def character_found(image)
    return { found: 'waldo'  } if compare_coordinates(image.waldo_coords)
    return { found: 'wizard' } if compare_coordinates(image.wizard_coords)
    return { found: 'wilma'  } if compare_coordinates(image.wilma_coords)
    return { found: 'odlaw'  } if compare_coordinates(image.odlaw_coords)
    { found: '' }
  end

  def compare_coordinates(image_coordinates)
    width  = params[:width].to_f
    height = params[:height].to_f
    width.between?(image_coordinates[:lower_width], image_coordinates[:upper_width]) &&
    height.between?(image_coordinates[:lower_height], image_coordinates[:upper_height])
  end
end
