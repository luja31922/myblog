class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :continente
      t.string :pais
      t.integer :poblacion
      t.string :vida_costo
      t.string :vacaciones_costo
      t.string :moneda
      t.text :descripcion
      t.boolean :visa_requiere
      t.boolean :lgtb_amigable


    end
  end
end
