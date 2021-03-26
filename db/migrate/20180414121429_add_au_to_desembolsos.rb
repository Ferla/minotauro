class AddAuToDesembolsos < ActiveRecord::Migration
  def self.up
    add_column :desembolsos, :desembolsospersona_id, :integer
  end

  def self.down
    remove_column :desembolsos, :desembolsospersona_id
  end
end
