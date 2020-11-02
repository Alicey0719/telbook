class CreateTelephones < ActiveRecord::Migration[5.2]
  def change
    create_table :telephones do |t|

      t.references :friend, null: false
      t.string :number, null: false
      t.boolean :cellphone, null:false

      t.timestamps
    end
  end
end
