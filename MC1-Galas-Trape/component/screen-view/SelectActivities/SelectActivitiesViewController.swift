import UIKit

class SelectActivitiesViewController: UIViewController {
    
    var isDomesticClicked = false
    var isInternationalClicked = false
    var isPersonalClicked = false
    var isPublicClicked = false
    var isCityClicked = false
    var isCountryClicked = false
    var isMountainClicked = false
    var isBeachClicked = false
    var isSwimmingClicked = false
    var isHikingClicked = false
    var isFishingClicked = false
    var isGardeningClicked = false

    
    @IBOutlet weak var domesticBackground: UIImageView!
    @IBOutlet weak var internationalBackground: UIImageView!
    @IBOutlet weak var personalBackground: UIImageView!
    @IBOutlet weak var publicBackground: UIImageView!
    @IBOutlet weak var cityBackground: UIImageView!
    @IBOutlet weak var countryBackground: UIImageView!
    @IBOutlet weak var mountainBackground: UIImageView!
    @IBOutlet weak var beachBackground: UIImageView!
    @IBOutlet weak var swimmingBackground: UIImageView!
    @IBOutlet weak var hikingBackground: UIImageView!
    @IBOutlet weak var fishingBackground: UIImageView!
    @IBOutlet weak var gardeningBackground: UIImageView!
    
    
    @IBOutlet weak var domesticButtonOutlet: UIButton!
    @IBOutlet weak var internationalButtonOutlet: UIButton!
    @IBOutlet weak var personalButtonOutlet: UIButton!
    @IBOutlet weak var publicButtonOutlet: UIButton!
    @IBOutlet weak var cityButtonOutlet: UIButton!
    @IBOutlet weak var countryButtonOutlet: UIButton!
    @IBOutlet weak var mountainButtonOutlet: UIButton!
    @IBOutlet weak var beachButtonOutlet: UIButton!
    @IBOutlet weak var swimmingButtonOutlet: UIButton!
    @IBOutlet weak var hikingButtonOutlet: UIButton!
    @IBOutlet weak var fishingButtonOutlet: UIButton!
    @IBOutlet weak var gardeningButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func buttonClicked(status: Bool, background: UIImageView) {
        if status {
            background.image = UIImage(named: "RectangleBorder")
        } else {
            background.image = UIImage(named: "RectangleWhite")
        }
    }
    
    @IBAction func domesticButtonClicked(_ sender: UIButton) {
        isDomesticClicked = !isDomesticClicked
        buttonClicked(status: isDomesticClicked, background: domesticBackground)
    }
    
    @IBAction func internationalButtonClicked(_ sender: UIButton) {
        isInternationalClicked = !isInternationalClicked
        buttonClicked(status: isInternationalClicked, background: internationalBackground)
    }
    
    @IBAction func personalButtonClicked(_ sender: UIButton) {
        isPersonalClicked = !isPersonalClicked
        buttonClicked(status: isPersonalClicked, background: personalBackground)
    }
    
    @IBAction func publicButtonClicked(_ sender: UIButton) {
        isPublicClicked = !isPublicClicked
        buttonClicked(status: isPublicClicked, background: publicBackground)
    }
    
    @IBAction func cityButtonClicked(_ sender: UIButton) {
        isCityClicked = !isCityClicked
        buttonClicked(status: isCityClicked, background: cityBackground)
    }
    
    @IBAction func countryButtonClicked(_ sender: UIButton) {
        isCountryClicked = !isCountryClicked
        buttonClicked(status: isCountryClicked, background: countryBackground)
    }
    
    @IBAction func mountainClicked(_ sender: UIButton) {
        isMountainClicked = !isMountainClicked
        buttonClicked(status: isMountainClicked, background: mountainBackground)
    }
    
    @IBAction func beachButtonClicked(_ sender: UIButton) {
        isBeachClicked = !isBeachClicked
        buttonClicked(status: isBeachClicked, background: beachBackground)
    }
    
    @IBAction func swimmingButtonClicked(_ sender: UIButton) {
        isSwimmingClicked = !isSwimmingClicked
        buttonClicked(status: isSwimmingClicked, background: swimmingBackground)
    }
    
    @IBAction func hikingButtonClicked(_ sender: UIButton) {
        isHikingClicked = !isHikingClicked
        buttonClicked(status: isHikingClicked, background: hikingBackground)
    }
    
    @IBAction func fishingButtonClicked(_ sender: UIButton) {
        isFishingClicked = !isFishingClicked
        buttonClicked(status: isFishingClicked, background: fishingBackground)
    }
    
    @IBAction func gardeningButtonClicked(_ sender: UIButton) {
        isGardeningClicked = !isGardeningClicked
        buttonClicked(status: isGardeningClicked, background: gardeningBackground)
    }
}
