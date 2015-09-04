class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :surname
      t.float :meat
      t.float :non_meat

      t.timestamps
    end
  end
end
