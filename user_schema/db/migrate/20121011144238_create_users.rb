# Este archivo debe contener una migración 
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      # Agrega aquí las columnas que faltan

      t.timestamps
    end
  end
end
