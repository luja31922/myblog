class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :city_id
      t.string :country_id
      t.text :experiencia
      t.date :fecha
      t.text :autor

    end
  end
end
