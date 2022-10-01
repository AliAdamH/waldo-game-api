class Api::V1::ImagesController < ApplicationController
  
  def index
    @images = Image.all
    render json: ImageSerializer.new(@images, fields: { image: %i[id title thumbnail_url] }).serializable_hash[:data]
  end

  def show
    @image = Image.find(params[:id])
    render json: ImageSerializer.new(@image, fields: { image: %i[landscape_url] }).serializable_hash[:data][:attributes]
  end

  def verify_coordinates; end
end