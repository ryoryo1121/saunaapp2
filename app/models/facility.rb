class Facility < ApplicationRecord
  validates :name, presence: true
  # validates :address, presence: true
  has_one_attached :image
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy

  def favorite_user(id)
   favorites.find_by(user_id: id)
  end

end
