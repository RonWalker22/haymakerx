class CreateExchangeLeagues < ActiveRecord::Migration[5.1]
  def change
    create_table :exchange_leagues do |t|
      t.references :exchange, null: false
      t.references :league, null: false

      t.timestamps
    end
    add_index :exchange_leagues,
              [:exchange_id, :league_id],
              unique: true
  end
end
