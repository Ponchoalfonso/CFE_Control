class CreateSwitches < ActiveRecord::Migration[5.0]
  def change
    create_table :switches do |t|
      t.string :name
      t.string :lastupdate
      t.references :subestation

      t.timestamps
    end
  end
end
