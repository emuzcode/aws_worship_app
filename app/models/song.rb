class Song < ApplicationRecord
  belongs_to :singer
  has_many :likes, dependent: :destroy
  
  validates :name_jp, presence: true
  validates :name_en, presence: true
  validates :singer_id, presence: true
end
