class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def filter
    if params[:query].blank?
      @engineers = Engineer.all
    else
      field = params[:field]
      query = "%#{params[:query]}%"
      @engineers = Engineer.where("#{field} LIKE ?", query)
    end
  end
end
