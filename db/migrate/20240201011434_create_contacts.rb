class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.integer "company_id" #this is the foreign key to connect a contact back to a specific company. like Tim Cook
      t.timestamps
    end
  end
end
