import PlaygroundSupport
import UIKit

class StartViewController: UIViewController {
    override func loadView() {
        navigationController?.navigationBar.isHidden = true
        
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 1024, height: 768)
        view.backgroundColor = #colorLiteral(red: 0.7843137255, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        
        let backgroundImage = UIImage(named: "Images/Interface/cover.png")!
        let background = UIImageView(image: backgroundImage)
        background.frame = CGRect(x: 0, y: 0, width: 1024, height: 768)
        
        let startButtonImage = UIImage(named: "Images/Interface/book.png")!
        let startButton = UIButton()
        startButton.setImage(startButtonImage, for: .normal)
        startButton.frame = CGRect(x: 297, y: 86, width: 431, height: 595)
        startButton.addTarget(nil, action: #selector(goToCookbook), for: .touchUpInside)
        
        view.addSubview(background)
        view.addSubview(startButton)
        self.view = view
    }
    @IBAction func goToCookbook(){
        navigationController?.show(kitchen, sender: nil)
        navigationController?.navigationBar.isHidden = true
    }
}

class CookbookViewController: UIViewController {
    override func loadView() {
        navigationController?.navigationBar.isHidden = true
        
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 1024, height: 768)
        view.backgroundColor = #colorLiteral(red: 0.7843137255, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        
        let backgroundImage = UIImage(named: "Images/Interface/recipes_page.png")!
        let background = UIImageView(image: backgroundImage)
        background.frame = CGRect(x: 0, y: 0, width: 1024, height: 768)
                
        view.addSubview(background)
        self.view = view
    }
}

class KitchenViewController: UIViewController {
    override func loadView() {
        navigationController?.navigationBar.isHidden = true
        
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 1024, height: 768)
        view.backgroundColor = #colorLiteral(red: 0.7843137255, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        
        let backgroundImage = UIImage(named: "Images/Interface/kitchen.png")!
        let background = UIImageView(image: backgroundImage)
        background.frame = CGRect(x: 0, y: 0, width: 1024, height: 768)
        
        let foodShelfImage = UIImage(named: "Images/Interface/food_shelf.png")
        let foodShelf = UIImageView(image: foodShelfImage)
        foodShelf.frame = CGRect(x: 107, y: 90, width: 808, height: 132)
        
        let panImage = UIImage(named: "Images/Interface/pan.png")
        let pan = UIImageView(image: panImage)
        pan.frame = CGRect(x: 363, y: 532, width: 297, height: 81)
                
        view.addSubview(background)
        view.addSubview(foodShelf)
        view.addSubview(pan)
        self.view = view
    }
}

let start = StartViewController()
let cookbook = CookbookViewController()
let kitchen = KitchenViewController()

let navigation = UINavigationController(screenType: .ipad, isPortrait: true)
navigation.pushViewController(start, animated: true)
PlaygroundPage.current.liveView = navigation.scale(to: 0.5)

/*:
 
 # Receitas


 
 ## Brigadeiro
 _rende 30 porções_
 
 ### Ingredientes
 - 1 lata de leite condensado
 - 2 colheres de sopa de manteiga
 - 2 colheres de sopa de achocolatado em pó
  
 -----
 
 ## Brownie de Chocolate
 _rende 8 porções_
 
 ### Ingredientes
 - 1 barra de chocolate meio amargo (400g)
 - 200g de manteiga
 - 6 ovos
 - 1 xícara e meia de açúcar
 - 1 xícara e meia de farinha de trigo
 
 -----
 
 ## Torta de Morango
 _rende 12 porções_
 
 ### Ingredientes
 - 1 xícara de farinha de trigo
 - 1 gema de ovo
 - 100g de manteiga
 - 2 colheres de sopa de açúcar
 - 1 colher de sopa de fermento em pó
 
*/
