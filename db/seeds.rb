# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
records = JSON.parse(File.read('recipes-english.json'))

records.each do |recipe|
    newRecipe = Recipe.new(
        :title => recipe['title'], 
        :cook_time => recipe['cook_time'], 
        :prep_time => recipe['prep_time'], 
        :ingredients => recipe['ingredients'], 
        :ratings => recipe['ratings'], 
        :cuisine => recipe['cuisine'], 
        :category => recipe['category'], 
        :author => recipe['author'], 
        :image => recipe['image'],                                 
        )
    newRecipe.save    
end