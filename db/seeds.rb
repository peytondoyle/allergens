#MAKE USERS
carlos = User.find_or_create_by(name: "Carlos")
peyton = User.find_or_create_by(name: "Peyton")

#MAKE RECIPES
recipe1 = Recipe.find_or_create_by(name: "Oysters", user_id: carlos.id)
recipe2 = Recipe.find_or_create_by(name: "Taco Casserole", user_id: peyton.id)

#MAKE INGREDIENTS
oyster = Ingredient.find_or_create_by(name: "Oyster")
saltines = Ingredient.find_or_create_by(name: "Saltine Crackers")
meat = Ingredient.find_or_create_by(name: "Meat®")
noodles = Ingredient.find_or_create_by(name: "Noodles")
sauce = Ingredient.find_or_create_by(name: "Sauce")
pepperoni = Ingredient.find_or_create_by(name: "Pepperoni")
dough = Ingredient.find_or_create_by(name: "Dough")
chocochips = Ingredient.find_or_create_by(name: "Chocolate Chips")
lemonzest = Ingredient.find_or_create_by(name: "Lemon Zest")
catzest = Ingredient.find_or_create_by(name: "Cat Zest")


#MAKE ALLERGY
carlos_allergy = Allergy.find_or_create_by(user_id: carlos.id, ingredient_id: oyster.id)
peyton_allergy = Allergy.find_or_create_by(user_id: peyton.id, ingredient_id: meat.id)
peyton_allergy2 = Allergy.find_or_create_by(user_id: peyton.id, ingredient_id: oyster.id)
carlos_allergy2 = Allergy.find_or_create_by(user_id: peyton.id, ingredient_id: meat.id)
carlos_allergy3 = Allergy.find_or_create_by(user_id: carlos.id, ingredient_id: oyster.id)
peyton_allergy3 = Allergy.find_or_create_by(user_id: peyton.id, ingredient_id: catzest.id)



#MAKE REC/ING
RecIng.find_or_create_by(recipe_id: recipe1.id, ingredient_id: oyster.id)
RecIng.find_or_create_by(recipe_id: recipe1.id, ingredient_id: saltines.id)
RecIng.find_or_create_by(recipe_id: recipe2.id, ingredient_id: meat.id)
RecIng.find_or_create_by(recipe_id: recipe2.id, ingredient_id: noodles.id)
