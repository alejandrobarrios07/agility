class CreateHandlers < ActiveRecord::Migration[5.2]
  def change
    create_table :handlers do |t|
      t.string :name
      t.string :country
      t.integer :number

      t.timestamps
    end
  end
end
