# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.find_or_create_by(firt_name:'Andres',second_name:"Lujan" ,email:"luja31922@gmail.com",password: "Cc1053805027",password_confirmation: "Cc1053805027", is_admin: "true")
