class KitchenReviewsController < ApplicationController

  def create
    @kitchen_review = KitchenReview.new(review_params)
    if @kitchen_review.save
      render json: true
    else
      render json: false
    end
  end

  private

  def review_params
    params.require(:kitchen_review).permit(:guest_id, :kitchen_id, :review, :stars)
  end

end
