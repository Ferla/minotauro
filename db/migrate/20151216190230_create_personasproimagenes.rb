class CreatePersonasproimagenes < ActiveRecord::Migration
  def self.up
    create_table :personasproimagenes do |t|
      t.integer :personasproceso_id
      t.string :descripcion
      t.string :personasproimagen_file_name
      t.string :personasproimagen_content_type
      t.integer :personasproimagen_file_size
      t.date :personasproimagen_updated_at      
      t.timestamps
    end
  end

  def self.down
    drop_table :personasproimagenes
  end
end
