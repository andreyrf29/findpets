class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :nome
      t.integer :idade
      t.binary :foto
      t.text :informacoes
      t.string :cidade_desap
      t.string :uf_desap
      t.integer :status

      t.timestamps
    end
  end
end
