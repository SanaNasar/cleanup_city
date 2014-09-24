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
    @image = Image.new(image_params)

    if @image.save
      redirect_to images_url
     else
       render action: 'new'
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
end