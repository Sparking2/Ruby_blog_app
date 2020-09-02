# frozen_string_literal: false

# instructions for creating the comments table in the database
class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
