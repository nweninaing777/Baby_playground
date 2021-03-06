class Myakachan < ApplicationRecord
  mount_uploader :image, ImageUploader
    validates :name,  presence: true, length: { maximum: 30 }
    validates :age,  presence: true, length: { maximum: 2 },
    numericality: {
      greater_than_or_equal_to: 0,
      less_than: 30
    }
    validates :gender,  presence: true, length: { maximum: 10 }
    validates :image, presence: true, allow_nil: true
    belongs_to :user, optional: true
    enum gender: { male: 1, female: 2 }

  end
