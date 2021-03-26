class CreateControles < ActiveRecord::Migration
  def self.up
    create_table :controles do |t|
      t.references :persona
      t.references :tiposcontrol
      t.references :user
      t.date :fecha
      t.date :fecha_vencimiento
      t.date :fecha_realterminacion
      t.integer :user_marcaterminacion

      t.timestamps
    end
  end

  def self.down
    drop_table :controles
  end
end
