class CreateReceipts < ActiveRecord::Migration
  def change
    create_table :receipts do |t|
      t.float :total
      t.float :meat

      t.references :user, index: true

      t.timestamps
    end
  end
end
