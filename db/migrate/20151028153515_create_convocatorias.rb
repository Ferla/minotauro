class CreateConvocatorias < ActiveRecord::Migration
  def self.up
    create_table :convocatorias do |t|
      t.string :documento
      t.string :identificacion
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.date :fecha_nacimiento
      t.string :residencia_direccion
      t.string :residencia_ciudad
      t.string :residencia_departamento
      t.string :oficina_direccion
      t.string :oficina_ciudad
      t.string :oficina_departamento
      t.string :residencia_telefono
      t.string :oficina_telefono
      t.string :celular
      t.string :email
      t.string :email_confirma
      t.string :universidad
      t.date :fecha_graduacion
      t.string :experiencia_profesional
      t.string :contacto1_primer_nombre
      t.string :contacto1_segundo_nombre
      t.string :contacto1_primer_apellido
      t.string :contacto1_segundo_apellido
      t.string :contacto1_telefono
      t.string :contacto1_email
      t.string :contacto2_primer_nombre
      t.string :contacto2_segundo_nombre
      t.string :contacto2_primer_apellido
      t.string :contacto2_segundo_apellido
      t.string :contacto2_telefono
      t.string :contacto2_email
      t.string :contacto3_primer_nombre
      t.string :contacto3_segundo_nombre
      t.string :contacto3_primer_apellido
      t.string :contacto3_segundo_apellido
      t.string :contacto3_telefono
      t.string :contacto3_email

      t.timestamps
    end
  end

  def self.down
    drop_table :convocatorias
  end
end
