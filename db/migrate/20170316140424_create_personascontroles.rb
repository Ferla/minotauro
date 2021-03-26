class CreatePersonascontroles < ActiveRecord::Migration
  def self.up
    create_table :personascontroles do |t|
      t.references :persona
      t.references :user
      t.string :tipo_atencion, :limit => 100
      t.string :observacion, :limit => 4000

      t.timestamps
    end
  end

  def self.down
    drop_table :personascontroles
  end
end
