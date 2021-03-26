class CreateDesembolsoscreditos < ActiveRecord::Migration
  def self.up
    create_table :desembolsoscreditos do |t|
      t.references :desembolsosrelacion
      t.integer :nro_cuota
      t.integer :cuota
      t.integer :cuota_ori
      t.date :fecha_vence
      t.integer :inicial
      t.integer :inicial_ori
      t.integer :amortiza
      t.integer :amortiza_ori
      t.integer :corriente
      t.integer :corriente_ori
      t.integer :final
      t.integer :final_ori
      t.integer :mora
      t.integer :diasmora
      t.integer :moraacum
      t.integer :morapendiente
      t.date :fecha_pago
      t.integer :valor_pagar
      t.integer :morames
      t.integer :moradiasmes
      t.integer :otros
      t.integer :moramesacum
      t.integer :inicial2
      t.integer :inicial_ori2
      t.integer :amortiza2
      t.integer :amortiza_ori2
      t.integer :corriente2
      t.integer :corriente_ori2
      t.integer :final2
      t.integer :final_ori2

      t.timestamps
    end
  end

  def self.down
    drop_table :desembolsoscreditos
  end
end
