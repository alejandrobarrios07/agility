class CreateDuos < ActiveRecord::Migration[5.2]
  def change
    create_table :duos do |t|
      t.references :handler, foreign_key: true
      t.references :dog, foreign_key: true

      t.timestamps
    end
  end
end
