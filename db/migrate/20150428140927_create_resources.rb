class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.references :story, index: true, foreign_key: true
      t.string :type
      t.text :body

      t.timestamps null: false
    end
  end
end
