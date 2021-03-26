class CreateConvocatoriasdocumentos < ActiveRecord::Migration
  def self.up
    create_table :convocatoriasdocumentos do |t|
      t.integer :convocatoria_id
      t.string :descripcion
      t.string :convocatoria_file_name
      t.string :convocatoria_content_type
      t.integer :convocatoria_file_size
      t.date :convocatoria_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :convocatoriasdocumentos
  end
end
