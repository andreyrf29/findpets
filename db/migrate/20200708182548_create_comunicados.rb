class CreateComunicados < ActiveRecord::Migration[6.0]
  def change
    create_table :comunicados do |t|
      t.string :nome
      t.string :telefone
      t.text :informacoes

      t.timestamps
    end
  end
end
