class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :state
      t.string :country
      t.text :description
      t.string :website
      t.string :facebook_page
      t.string :facebook_url
      t.string :email
      t.timestamps
    end
  end
end
