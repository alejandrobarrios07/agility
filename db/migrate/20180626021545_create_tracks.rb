class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :truck_mode
      t.string :judge
      t.numeric :time
      t.numeric :speed

      t.timestamps
    end
  end
end
