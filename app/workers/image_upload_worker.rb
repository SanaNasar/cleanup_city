class ImageUploadWorker

  include Sidekiq::Worker

  def perform(image_hash)
     image_params = JSON.parse(image_hash)
     puts "*"*50
     p image_params
     puts "*"*50
     p image_params["trash"]

     puts "*"*50
     file =  File.new(image_params["trash"]["tempfile"])
     puts file
     image_params["trash"]["tempfile"] = file
     image_params["trash"] = ActionDispatch::Http::UploadedFile.new(image_params["trash"].symbolize_keys)
     @image = Image.new(image_params)
     #@image.save()
  end
end