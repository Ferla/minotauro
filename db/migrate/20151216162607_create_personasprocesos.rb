class CreatePersonasprocesos < ActiveRecord::Migration
  def self.up
    create_table :personasprocesos do |t|
      t.integer :persona_id
      t.integer :personasobligacion_id
      t.string :tipo_proceso
      t.string :nro_juzgado
      t.string :tipo_juzgado
      t.integer :municipio_id
      t.integer :user_abogado
      t.string :estado
      t.date :fecha
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :personasprocesos
  end
end
