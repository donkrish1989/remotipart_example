class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def upload
    if request.post?
      file = params[:file]
      raise file.original_filename.inspect
    end
  end
end
