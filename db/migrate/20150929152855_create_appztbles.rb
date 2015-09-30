class CreateAppztbles < ActiveRecord::Migration
  def change
    create_table :appztbles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
