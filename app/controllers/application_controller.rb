class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def upload
    if request.post?
      file = params[:file]
      render :text => "$('#file_name').html('#{file.original_filename}');"
    end
  end
end
