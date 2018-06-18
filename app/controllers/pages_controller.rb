class PagesController < ApplicationController
  def home
  end



   def search
      if params[:search].present? && params[:search].strip != ""
         session[:museekv1_search] = params[:search]

      end

      arrResult = Array.new

      if session[:museekv1_search] && session[:museekv1_search] != ""
         @advertisements_address = Advertisement.where(active: true).near(session[:museekv1_search], 5, order:'distance')
      else
         @advertisements_address = Advertisement.where(active: true).all
      end

      @search = @advertisements_address.ransack(params[:q])
      @advertisements = @search.result

      @arrAdvertisements = @advertisements.to_a
   end
end
