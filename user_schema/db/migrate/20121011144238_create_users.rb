# Este archivo debe contener una migración 
class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthday
      t.string :email
      t.string :phone
      t.timestamps
      # Agrega aquí las columnas que faltan
#       Active Record supports the following database column types:
			# :binary
			# :boolean
			# :date
			# :datetime
			# :decimal
			# :float
			# :integer
			# :primary_key
			# :string
			# :text
			# :time
			# :timestamp
     
    end
  end
end
