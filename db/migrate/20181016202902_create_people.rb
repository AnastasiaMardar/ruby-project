class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.decimal :age
      t.string :phone
      t.string :country
      t.belongs_to :address, index: true, foreign_key: true

      t.timestamps
    end
  end
end
