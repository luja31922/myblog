class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :ciudad
      t.string :country_id
      t.string :continente
      t.integer :poblacion
      t.text :descripcion

      
    end
  end
end
