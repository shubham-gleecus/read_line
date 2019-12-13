class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :auth_name
      t.text :blog

      t.timestamps
    end
  end
end
