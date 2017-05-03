class CreateEtnxtransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :etnxtransformers do |t|
      t.integer :number
      t.string :mide
      t.string :test_mode
      t.decimal :lost_mv
      t.integer :t_number
      t.timestamps
    end
  end
end
