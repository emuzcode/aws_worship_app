class Singer < ApplicationRecord
  has_many :songs

  validates :name_jp, presence: true,
                      length: {maximum: 50},
                      uniqueness: { case_sensitive: false}
  validates :name_en, presence: true, 
                      length: {maximum: 50},
                      uniqueness: { case_sensitive: false}
end
