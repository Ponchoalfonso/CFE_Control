class CreateEtnhtransformers < ActiveRecord::Migration[5.0]
  def change
    create_table :etnhtransformers do |t|
      t.integer :number
      t.string :mide
      t.string :test_mode
      t.decimal :lost_mv

      t.timestamps
    end
  end
end