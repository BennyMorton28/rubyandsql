# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

puts "Companies: #{Company.all.count}"
puts "Contacts: #{Contact.all.count}"

# 1. insert new rows in the contacts table with relationship to a company



contact = Contact.new
contact["first_name"] = "Tim"
contact["last_name"] = "Cook"
contact["email"] = "tim@apple.com"
contact["company_id"] = Company.find_by({"name" => "Apple"})["id"]
contact.save

contact = Contact.new
contact["first_name"] = "Greg"
contact["last_name"] = "Jennings"
contact["email"] = "Greg@apple.com"
contact["company_id"] = Company.find_by({"name" => "Apple"})["id"]
contact.save

contact = Contact.new
contact["first_name"] = "Jeff"
contact["last_name"] = "Bezos"
contact["email"] = "jeff@amazon.com"
contact["company_id"] = Company.find_by({"name" => "Amazon"})["id"]
contact.save

puts "Companies: #{Company.all.count}"
puts "Contacts: #{Contact.all.count}"


# 2. How many contacts work at Apple?

apple_contacts = Contact.where({"company_id" => Company.find_by({"name" => "Apple"})["id"]})
puts "Apple contacts: #{apple_contacts.count}"
amazon_contacts = Contact.where({"company_id" => Company.find_by({"name" => "Amazon"})["id"]})
puts "Amazon contacts: #{amazon_contacts.count}"


# 3. What is the full name of each contact who works at Apple?

cons = Contact.all # this is the array

for con in cons
    first_name = con["first_name"]
    last_name = con["last_name"]
    email = con["email"]
    puts "#{first_name} #{last_name} email: #{email}"
end 



