class CreateCits < ActiveRecord::Migration[7.0]
  def change
    create_table :cits do |t|
      t.date :fecha
      t.time :hora
      t.text :diagnostico
      t.boolean :activo
      t.integer :id_medico
      t.integer :id_paciente

      t.timestamps
    end
  end
end
