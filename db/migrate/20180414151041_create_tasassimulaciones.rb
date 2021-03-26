class CreateTasassimulaciones < ActiveRecord::Migration
  def self.up
    create_table :tasassimulaciones do |t|
      t.string :anno
      t.string :mes
      t.decimal :tasa

      t.timestamps
    end
  end

  def self.down
    drop_table :tasassimulaciones
  end
end
