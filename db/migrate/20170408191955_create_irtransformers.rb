class CreateIrtransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :irtransformers do |t|
      t.integer :proof
      t.string :line
      t.string :guard
      t.string :earth
      t.integer :measure
      t.integer :number
      t.decimal :time
      t.decimal :resistence
      t.integer :t_number
      t.timestamps
    end
  end
end
