class CreateContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :email, null: true
      t.text :content, null: false
      t.timestamps
    end
  end
end
