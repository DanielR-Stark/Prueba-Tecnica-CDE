class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.integer :identificacion
      t.string :tipo_doc
      t.string :nombre
      t.string :direccion
      t.string :eps
      t.boolean :activo

      t.timestamps
    end
  end
end
