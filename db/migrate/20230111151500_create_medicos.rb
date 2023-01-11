class CreateMedicos < ActiveRecord::Migration[7.0]
  def change
    create_table :medicos do |t|
      t.integer :identificacion
      t.string :tipo_doc
      t.string :nombre
      t.string :especialidad
      t.boolean :activo

      t.timestamps
    end
  end
end
