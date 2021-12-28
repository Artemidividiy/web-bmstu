class Changevaluetype < ActiveRecord::Migration[6.1]
  def change
    change_column :results, :value, :text
  end
end
