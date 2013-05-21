class CreatePresenters < ActiveRecord::Migration
  def change
    create_table :presenters do |t|
      t.string :nameFirst
      t.string :nameLast
      t.string :nameAlias
      t.string :email
      t.string :privateEmail
      t.string :phone
      t.string :website
      t.string :fetlife
      t.string :twitter
      t.string :facebook
      t.string :google
      t.text :shortDescrip
      t.text :bio
      t.string :shirtSize
      t.boolean :new
      t.string :image

      t.timestamps
    end
  end
end
