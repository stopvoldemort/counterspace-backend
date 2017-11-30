class KitchenReviewSerializer < ActiveModel::Serializer
  attributes :stars, :review, :guest, :created_at

  def guest
    @user = User.find(object.guest_id)
    @user.name.capitalize
  end
end
