json.id recipe.id
json.name recipe.name
json.ingredients recipe.ingredients do |ingredient|
  json.id ingredient.id
  json.name ingredient.name
  json.amount ingredient.amount
  json.unit ingredient.unit
end
