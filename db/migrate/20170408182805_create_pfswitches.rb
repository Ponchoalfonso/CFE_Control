class CreatePfswitches < ActiveRecord::Migration[5.0]
  def change
    create_table :pfswitches do |t|
      t.integer :phase
      t.integer :proof
      t.boolean :switch_position
      t.integer :tat
      t.string :tbt
      t.string :selector_switch
      t.decimal :mv
      t.decimal :fp_current
      t.integer :t_number

      t.timestamps
    end
  end
end
