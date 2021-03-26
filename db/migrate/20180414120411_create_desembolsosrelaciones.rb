class CreateDesembolsosrelaciones < ActiveRecord::Migration
  def self.up
    create_table :desembolsosrelaciones do |t|
      t.references :desembolsospersona
      t.references :persona
      t.references :personasobligacion

      t.timestamps
    end
  end

  def self.down
    drop_table :desembolsosrelaciones
  end
end
