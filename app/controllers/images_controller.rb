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
      redirect_to @image, notice: 'Image was successfully uploaded.'
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
      params.require(:image).permit(:trash)
    end
end
  

# # GET /friends
#   # GET /friends.json
#   def index
#     @images = Image.all
#   end

#   # GET /friends/1
#   # GET /friends/1.json
#   def show
#   end

#   # GET /friends/new
#   def new
#     @image = Image.new
#   end

#   # GET /friends/1/edit
#   def edit
#   end

#   # POST /friends
#   # POST /friends.json
#   def create
#     @image = Image.new(image_params)

#     respond_to do |format|
#       if @image.save
#         format.html { redirect_to @image, notice: 'Image was successfully created.' }
#         format.json { render action: 'show', status: :created, location: @image}
#       else
#         format.html { render action: 'new' }
#         format.json { render json: @image.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # PATCH/PUT /friends/1
#   # PATCH/PUT /friends/1.json
#   def update
#     respond_to do |format|
#       if @image.update(image_params)
#         format.html { redirect_to @image, notice: 'Image was successfully updated.' }
#         format.json { head :no_content }
#       else
#         format.html { render action: 'edit' }
#         format.json { render json: @images.errors, status: :unprocessable_entity }
#       end
#     end
#   end

#   # DELETE /friends/1
#   # DELETE /friends/1.json
#   def destroy
#     @image.destroy
#     respond_to do |format|
#       format.html { redirect_to images_url }
#       format.json { head :no_content }
#     end
#   end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_image
#       @image = Image.find(params[:id])
#     end

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def image_params
#       params.require(:image).permit(:trash, :name)
#     end
# end