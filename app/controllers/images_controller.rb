class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  def index
    @images = Image.all
  end

  # GET /friends/new
  def new
    @image = Image.new  
  end

  def create
    # @note = note.new
    # image_hash = {}
    # image_hash[:trash] = trash_to_hash(image_params()[:trash])
    # image_hash[:note] = image_params[:note]
    # #binding.pry
    # ImageUploadWorker.perform_async(image_hash.to_json)
    image = Image.new(image_params)
    if image.save
      redirect_to images_url
    else
      render :new
    end
  end

  def show
    @image = Image.find(params[:id])
  end

  
  private
    
    def set_image
      @image = Image.find(params[:id])
    end

    def image_params
      params.require(:image).permit(:trash, :note)
    end

    def trash_to_hash(trash)
      trash_hash = Hash.new
      trash_hash[:content_type] = trash.content_type
      trash_hash[:headers] = trash.headers
      trash_hash[:original_filename] = trash.original_filename
      trash_hash[:tempfile] = trash.tempfile.path
      trash_hash
    end
end