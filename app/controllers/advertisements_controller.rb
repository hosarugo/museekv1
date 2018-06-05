class AdvertisementsController < ApplicationController

  before_action :set_advertisement, only: [:show, :edit, :update, :destroy, :favorited, :unfavorite ]
  before_action :authenticate_user!, except: [:show]
  before_action :require_same_user, only: [:edit, :update]




# def favorited
#   current_user.favorite @advertisement
#   redirect_to advertisement_path(@advertisement.id)
# end

# def unfavorite
#   current_user.favorites.where('favoritable_id = ? ', @advertisement.id).delete_all
#   redirect_to advertisement_path(@advertisement.id)
# end



  def index
    @advertisements = current_user.advertisements
  end

  def new
    @advertisement = current_user.advertisements.build
  end

  def create
    @advertisement = current_user.advertisements.build(advertisement_params)

    if @advertisement.save

      if params[:images]
        params[:images].each do |i|
          @advertisement.photos.create(image: i)
        end
      end

      @photos = @advertisement.photos

      redirect_to advertisement_path(@advertisement), notice:"Your advertisement is online. Congratulations!"

    else

     render :new

   end
 end

def show
  @photos = @advertisement.photos

  # @reviews = @advertisement.reviews

    # if current_user

    #     @booked = Reservation.where("advertisement_id = ? AND user_id = ?", @advertisement.id, current_user.id).present?

    #     #@hasReview = @reviews.find_by(user_id: current_user.id)

    # end
  end

def edit

  @photos = @advertisement.photos

end

def update
 if @advertisement.update(advertisement_params)

  if params[:images]
    params[:images].each do |i|
      @advertisement.photos.create(image: i)
  end
end

  redirect_to advertisement_path(@advertisement), notice:"Update saved..."

else

 render :edit

  end

end




private

def set_advertisement
  @advertisement = Advertisement.find(params[:id])
end

def advertisement_params
  params.require(:advertisement).permit(:main_category, :category, :title, :listing_name, :description, :address, :price,
   :active)

end

def require_same_user
    if current_user.id != @advertisement.user_id
      flash[:danger] = "You can not modify this page!"
      redirect_to root_path
    end
end

end
