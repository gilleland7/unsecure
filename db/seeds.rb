# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(firstname: 'John', lastname: 'Doe', dob: '17/11/1999', ssn:123456789, username:'john1', password:'pass1', num: 1)
User.create(firstname: 'Jane', lastname: 'Moe', dob: '15/19/2000', ssn:987654321, username:'jane1', password:'pass2', num: 2)
User.create(firstname: 'Ray', lastname: 'Ray', dob: '12/8/2001', ssn: 00000000, username: 'ray1', password: 'pass3', num: 3) 
