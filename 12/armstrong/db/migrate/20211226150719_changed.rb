class Changed < ActiveRecord::Migration[6.1]
  def change
    remove_column :results, :number_id, :integer
    add_column :results, :number, :integer
  end
end
