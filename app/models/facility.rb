class Facility < ApplicationRecord
  validates :name, presence: true
  # validates :address, presence: true
  has_one_attached :image
  has_many :favorite, dependent: :destroy

  def favorite_user(id)
   favorite.find_by(user_id: id)
  end

end
