class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :First_name
      t.string :Last_name

      t.timestamps
    end
  end
end
