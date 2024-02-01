class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t| #name of company/whatever goes there is lowercase. t is local variable. representation of company table, t. 
      t.string "name" 
      t.string "city"
      t.string "state"
      t.string "url"
      t.timestamps
    end
  end
end
