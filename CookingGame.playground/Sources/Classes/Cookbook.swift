import Foundation

public class Cookbook {
    var recipes: [Recipe]
    var stars: [Int]
    
    init() {
        // Ingredientes
        let butter = Ingredient(name: "Manteiga", unitOfMeasurement: "gramas", imageSrc: "butter.png", availableSizes: [(40, "1 colher de sopa"), (100, "100 gramas")] )
        let chocolatePowder = Ingredient(name: "Achocolatado em pó", unitOfMeasurement: "gramas", imageSrc: "chocolate_powder.png", availableSizes: [(5, "1 colher de sopa")])
        let condensedMilk = Ingredient(name: "Leite condensado", unitOfMeasurement: "gramas", imageSrc: "condensed_milk.png", availableSizes: [(400, "1 lata"), (200, "1/2 lata")])
        
        // Receitas
        let brigadeiro = Recipe(ingredients: [(condensedMilk, 200), (chocolatePowder, 5), (butter, 40)], servings: 15)
        
        recipes = [brigadeiro]
        stars = [0]
    }
}
