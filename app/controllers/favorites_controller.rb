class FavoritesController < ApplicationController
  
  def create
    @favorite = Favorite.create(user_id: current_user.id, book_id: params[:book_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @favorite = Favorite.find_by(book_id: params[:book_id], user_id: current_user.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
