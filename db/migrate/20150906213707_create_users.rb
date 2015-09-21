class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :surname
      t.string :password_digest
      t.string :role

      t.timestamps
    end
  end
end
