class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :nome
      t.integer :ano
      t.string :pais

      t.timestamps
    end
  end
end
