class CreateResults < ActiveRecord::Migration[6.1]
  def change
    create_table :results do |t|
      t.integer :value
      t.integer :number_id

      t.timestamps
    end
  end
end
