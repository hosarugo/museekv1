class PhotosController < ApplicationController

  def destroy
    @photo = Photo.find(params[:id])
    advertisement = @photo.advertisement
    @photo.destroy

    @photos = Photo.where(advertisement_id: advertisement.id)

    respond_to :js
  end
end
