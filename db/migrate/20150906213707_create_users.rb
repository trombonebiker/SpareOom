class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :surname
      t.string :password_digest
      t.float :meat
      t.float :non_meat
      t.float :amount_due_ethan
      t.float :amount_due_others
      t.string :role

      t.timestamps
    end
  end
end
