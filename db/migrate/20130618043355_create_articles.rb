class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :category
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
