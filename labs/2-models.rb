# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

jack = Salesperson.new
jack["first_name"] = "Jack"
jack["last_name"] = "Lydon"
jack["email"] = "jack996@comcast.net"
jack.save

puts "There are #{("Salesperson.all.count")} Salespeople in the system"

umasai = Salesperson.new
umasai["first_name"] = "Umasai Sanket"
umasai["last_name"] = "Vadlamaniac"
umasai["email"] = "umasaisanket@JOI.net"
umasai.save

puts jack.inspect
puts umasai.inspect

puts "There are #{Salesperson.all.count} Salespeople in the system"


# 3. write code to display how many salespeople rows are in the database


puts "There are #{Salesperson.all.count} Salespeople in the system"


# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

umasai["first_name"] = "Umasai"
umasai.save

puts umasai.inspect



# CHALLENGE:
# 5. write code to display each salesperson's full name

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng


# this a nice loop that loops through the array salespeople that we just grabbed. Salesperson.all is the full amount of rows
salespeople = Salesperson.all # this is an array

for salespeepy in salespeople
    first_name = salespeepy["first_name"]
    last_name = salespeepy["last_name"]
    puts "#{first_name} #{last_name}"
end

