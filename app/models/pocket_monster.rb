class PocketMonster < ApplicationRecord
  has_and_belongs_to_many :teams
  validates :name, presence: true
  validates :number, presence: true, uniqueness: true
  validates_presence_of :name, 
                        :number, 
                        :image,
                        :shiny

  class << self
    def find_pokemon(poke)
      create(
        name: poke.name,
        number: poke.number,
        image: poke.image,
        shiny: poke.shiny
      )
    end
  end
end

