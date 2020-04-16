import Foundation

public class Ingredient {
    var name: String
    var unitOfMeasurement: String
    var imageSrc: String
    var availableSizes: [(Int, String)]
    
    init(name: String, unitOfMeasurement: String, imageSrc: String, availableSizes: [(Int, String)]) {
        self.name = name
        self.unitOfMeasurement = unitOfMeasurement
        self.imageSrc = imageSrc
        self.availableSizes = availableSizes
    }
    
}
