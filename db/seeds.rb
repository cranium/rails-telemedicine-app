# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

carson = User.create({:email => "carsonbcrane@gmail.com", :password => "asdfasdfasdf"})
carson.save

henry = User.create({:email => "henrypl360@gmail.com", :password => "asdfasdfasdf"})
henry.save

case1 = carson.case_threads.create({:title => "asdf"})
case1.save

consult = case1.consults.create({:user_id => henry.id})
consult.save