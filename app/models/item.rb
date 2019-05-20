class Item < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, numericality: { only_integer: true }, presence: true
  validates :photo, presence: true
  belongs_to :user
  has_one :purchase
  mount_uploader :photo, PhotoUploader
end
