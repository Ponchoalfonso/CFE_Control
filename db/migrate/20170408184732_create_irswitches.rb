class CreateIrswitches < ActiveRecord::Migration[5.0]
  def change
    create_table :irswitches do |t|
      t.integer :phase
      t.integer :proof
      t.boolean :position_switch
      t.string :connection
      t.decimal :gigaohms
      t.integer :t_number
      t.timestamps
    end
  end
end
