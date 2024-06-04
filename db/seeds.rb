# Clear existing data
RecipeIngredient.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

# Create ingredients
lemon = Ingredient.create!(name: 'Lemon', amount: '2', unit: 'pieces')
spinach = Ingredient.create!(name: 'Spinach', amount: '2', unit: 'handfuls')
ginger = Ingredient.create!(name: 'Ginger', amount: '1', unit: 'inch')
apple = Ingredient.create!(name: 'Apple', amount: '3', unit: 'pieces')
carrot = Ingredient.create!(name: 'Carrot', amount: '5', unit: 'pieces')
orange = Ingredient.create!(name: 'Orange', amount: '2', unit: 'pieces')

# Create recipes and associate ingredients
green_juice = Recipe.create!(name: 'Green Juice', ingredients: [spinach, apple, lemon])
carrot_juice = Recipe.create!(name: 'Carrot Juice', ingredients: [carrot, ginger, orange])
ginger_lemonade = Recipe.create!(name: 'Ginger Lemonade', ingredients: [lemon, ginger, orange])

puts "Seed data created successfully!"
