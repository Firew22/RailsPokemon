class CreatePocketMonstersTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :pocket_monsters_teams, id: false do |t|
      t.belongs_to :pocket_monster
      t.belongs_to :team
    end
  end
end
