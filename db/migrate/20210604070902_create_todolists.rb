class CreateTodolists < ActiveRecord::Migration[6.1]
  def change
    create_table :todolists do |t|
      t.text :description

      t.timestamps
    end
  end
end
