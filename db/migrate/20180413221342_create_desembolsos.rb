class CreateDesembolsos < ActiveRecord::Migration
  def self.up
    create_table :desembolsos do |t|
      t.string :fondo
      t.string :codigo_k
      t.string :numero
      t.string :documento
      t.string :fondo2
      t.string :id_solicitud
      t.string :id_anterior
      t.string :tipo_documento
      t.string :documento_anterior
      t.string :pais_expedicion
      t.string :convocatoria
      t.string :estado_credito
      t.string :observacion
      t.string :estado_icetex
      t.string :caracterizacion_credito
      t.string :nro_resolucion
      t.string :fecha_resolucion
      t.string :fecha_acta
      t.string :ultimo_giro_realizado
      t.string :genero
      t.string :pais_nacimiento
      t.string :dpto_nacimiento
      t.string :ciudad_nacimiento
      t.string :comuna
      t.string :nombre_comuna
      t.string :puntaje_sisben
      t.string :fecha_nacimiento
      t.string :edad
      t.string :nombre_completo
      t.string :ies
      t.string :tipo_ies
      t.string :pregrado_programa
      t.string :tipo_pregrado
      t.string :icfesanno_1999
      t.string :icfesanno_2000
      t.string :estrato
      t.string :direccion_residencia
      t.string :telefono
      t.string :celular
      t.string :correo_electronico
      t.string :semestres_a_financiar
      t.string :semestre_ingreso
      t.string :duracion_programa
      t.string :giros_realizados
      t.string :giros_pendientes
      t.string :tipo_beneficio
      t.string :vigencia
      t.string :matricula
      t.string :sostenimiento
      t.string :total_desembolsado
      t.string :operador_financiero

      t.timestamps
    end
  end

  def self.down
    drop_table :desembolsos
  end
end
