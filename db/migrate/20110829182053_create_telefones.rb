class CreateTelefones < ActiveRecord::Migration
  def self.up
    create_table :telefones do |t|
      t.string :nome
      t.string :ramal
      t.string :sala
      t.string :vinculo

      t.timestamps
    end
  end

  def self.down
    drop_table :telefones
  end
end
