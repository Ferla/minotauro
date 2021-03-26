class CreateDesembolsospersonas < ActiveRecord::Migration
  def self.up
    create_table :desembolsospersonas do |t|
      t.string :documento
      t.string :documento_anterior
      t.string :nombre_completo
      t.string :ies
      t.integer :persona_id

      t.timestamps
    end
  end

  def self.down
    drop_table :desembolsospersonas
  end
end
