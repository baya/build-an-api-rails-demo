# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
                     {
                       email: 'test-user-00@mail.com',
                       name: 'test-user-00',
                       activated: DateTime.now,
                       admin: false
                     },
                     {
                       email: 'test-user-01@mail.com',
                       name: 'test-user-01',
                       activated: DateTime.now,
                       admin: false
                     }
                    ])
