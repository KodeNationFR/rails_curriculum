class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :title
      t.text :description
      t.boolean :access, default: true
      t.string :image

      t.timestamps
    end
  end
end
