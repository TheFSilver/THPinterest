class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.references :user, foreign_key: true
      t.string :link

      t.timestamps
    end
  end
end
