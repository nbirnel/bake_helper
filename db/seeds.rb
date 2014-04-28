# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
   Recipe.create( name: 'White Bread',
     prep_time: 30,
     notes:   'just a trial',
     history: 'made it up on the fly'    )


   Ingredient.create( name: 'Power Bread Flour',
     price_per_pound: 0.85 )
