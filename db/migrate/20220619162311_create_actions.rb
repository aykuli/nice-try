class CreateActions < ActiveRecord::Migration[7.0]
  def change
    create_table :actions do |t|
      t.string :code
      t.string :title

      t.timestamps
    end
  end
end
