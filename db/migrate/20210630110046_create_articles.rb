class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.string :abstract
      t.string :published_date
      t.string :media_url

      t.timestamps
    end
  end
end
