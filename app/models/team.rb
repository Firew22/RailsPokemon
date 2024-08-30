class Team < ApplicationRecord
  has_and_belongs_to_many :pocket_monsters
  validates :name, presence: true
end
