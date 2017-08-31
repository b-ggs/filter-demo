class CreateEngineers < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers do |t|
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
