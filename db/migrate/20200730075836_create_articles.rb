class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.boolean :displayed, default: true

      t.timestamps
    end
  end
end
