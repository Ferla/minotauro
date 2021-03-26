class CreateTiposcontroles < ActiveRecord::Migration
  def self.up
    create_table :tiposcontroles do |t|
      t.string :descripcion
      t.integer :dias
      t.string :dias_clase

      t.timestamps
    end
  end

  def self.down
    drop_table :tiposcontroles
  end
end
