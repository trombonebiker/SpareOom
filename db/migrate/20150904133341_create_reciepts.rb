class CreateReciepts < ActiveRecord::Migration
  def change
    create_table :reciepts do |t|

      t.timestamps
    end
  end
end
