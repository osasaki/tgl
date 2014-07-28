class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :link
      t.string :logo

      t.timestamps
    end
  end
end
