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
        background.frame = CGRect(x: 0, y: 0, width: 1024, height: 1366)
        
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
        navigationController?.show(cookbook, sender: nil)
        navigationController?.navigationBar.isHidden = true
    }
}

class CookbookViewController: UIViewController {
    
}

let start = StartViewController()
let cookbook = CookbookViewController()

let navigation = UINavigationController(screenType: .ipad, isPortrait: true)
navigation.pushViewController(start, animated: true)
PlaygroundPage.current.liveView = navigation.scale(to: 0.5)
