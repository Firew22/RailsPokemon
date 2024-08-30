class CreateTeamsPokemon < ActiveRecord::Migration[6.1]
  def change
    create_table :teams_pokemons do |t|
      t.references :team, null: false, foreign_key: true
      t.references :pocket_monsters, null: false, foreign_key: true

      t.timestamps
    end
  end
end
