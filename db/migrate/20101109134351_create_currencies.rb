class CreateCurrencies < ActiveRecord::Migration
  def up
    create_table :spree_currencies do |t|
      t.string  :num_code, null: false
      t.string  :char_code, null: false
      t.string  :name, null: false
      t.boolean :basic, default: false
      t.string  :locale
      t.timestamps
    end
  end

  def down
    drop_table :spree_currencies
  end
end
