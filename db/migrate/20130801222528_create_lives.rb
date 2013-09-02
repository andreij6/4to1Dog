class CreateLives < ActiveRecord::Migration
  def change
    create_table :lives do |t|
      t.string :title
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
