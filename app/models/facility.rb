class Facility < ApplicationRecord
  geocoded_by :address
after_validation :geocode, if: lambda {|obj| obj.address_changed?}
  validates :name, presence: true
  # validates :address, presence: true
  has_one_attached :image
  has_many :favorite, dependent: :destroy
  has_many :comment, dependent: :destroy




  def favorite_user(id)
   favorite.find_by(user_id: id)
  end

end
