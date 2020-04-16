import Foundation

public class Recipe {
    
    var ingredients: [(Ingredient, Int)]
    var ingredientsAdded: [(Ingredient, Int)]
    var servings: Int
    
    init(ingredients: [(Ingredient, Int)], servings: Int) {
        self.ingredients = ingredients
        self.servings = servings
        self.ingredientsAdded = []
    }
    
    func calculateRecipeYield() {
        
    }
}
