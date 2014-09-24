class SiteController < ApplicationController
  def index 
    # # @images = UnsavedMsg.new
    # user_name
  end


  def about
    # user_name
    render :about 
  end

  def terms
    render :terms
  end

  def maps
    render :maps
  end
  
end
