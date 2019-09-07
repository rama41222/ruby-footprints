class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.boolean :active, default: true
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
