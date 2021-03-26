class CreatePersonasdemograficos < ActiveRecord::Migration
  def self.up
    create_table :personasdemograficos do |t|
      t.references :persona
      t.string :dir_1
      t.integer :dmun_1
      t.string :dir_2
      t.integer :dmun_2
      t.string :dir_3
      t.integer :dmun_3
      t.string :dir_4
      t.integer :dmun_4
      t.string :dir_5
      t.integer :dmun_5
      t.string :tel_1
      t.string :tel_2
      t.string :tel_3
      t.string :tel_4
      t.string :tel_5
      t.string :cor_1
      t.string :cor_2
      t.string :cor_3
      t.string :cor_4
      t.string :cor_5

      t.timestamps
    end
  end

  def self.down
    drop_table :personasdemograficos
  end
end
