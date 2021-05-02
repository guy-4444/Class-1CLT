import UIKit

class BlackJackController: UIViewController {

    @IBOutlet weak var bj_BTN_hitMe: UIButton!
    @IBOutlet weak var bj_IMG_card1: UIImageView!
    @IBOutlet weak var bj_IMG_card2: UIImageView!
    @IBOutlet weak var bj_IMG_card3: UIImageView!
    @IBOutlet weak var bj_LBL_score: UILabel!
    @IBOutlet weak var bj_LBL_dealer: UILabel!
    @IBOutlet weak var bj_LBL_sum: UILabel!
    
    var score: Int = 0
    
    let cards = [#imageLiteral(resourceName: "p0"), #imageLiteral(resourceName: "p1"), #imageLiteral(resourceName: "p2"), #imageLiteral(resourceName: "p3"), #imageLiteral(resourceName: "p4"), #imageLiteral(resourceName: "p5") ,#imageLiteral(resourceName: "p6"), #imageLiteral(resourceName: "p7"), #imageLiteral(resourceName: "p8"), #imageLiteral(resourceName: "p9"), #imageLiteral(resourceName: "p10"), #imageLiteral(resourceName: "p11"), #imageLiteral(resourceName: "p12"), #imageLiteral(resourceName: "p13")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func hitMeClicked(_ sender: UIButton) {
        
        let dealerResult = Int.random(in: 15...21)
        bj_LBL_dealer.text = "\(dealerResult)"

        //bj_IMG_card1.image = UIImage(named: "p\(randomIntA)")

        var randomIntA = Int.random(in: 1...13)
        var randomIntB = Int.random(in: 1...13)
        var randomIntC = Int.random(in: 1...13)
        bj_IMG_card1.image = cards[randomIntA]
        bj_IMG_card2.image = cards[randomIntB]
        bj_IMG_card3.image = cards[randomIntC]

        
        randomIntA = min(randomIntA, 10)
        randomIntB = min(randomIntB, 10)
        randomIntC = min(randomIntC, 10)

        randomIntA = randomIntA == 1 ? 11 : randomIntA
        randomIntB = randomIntB == 1 ? 11 : randomIntB
        randomIntC = randomIntC == 1 ? 11 : randomIntC

        var sum = randomIntA + randomIntB + randomIntC
        
        if (randomIntA == 11  &&  sum > 21) {
            randomIntA = 1
        }
        if (randomIntB == 11  &&  sum > 21) {
            randomIntB = 1
        }
        if (randomIntC == 11  &&  sum > 21) {
            randomIntC = 1
        }
        sum = randomIntA + randomIntB + randomIntC
        
        bj_LBL_sum.text = "\(sum)"
        
        
        if (sum > dealerResult  &&  sum <= 21) {
            score += 1
        } else {
            score -= 1
        }
        bj_LBL_score.text = "\(score)"
    
        
        bj_BTN_hitMe.isEnabled = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
            self.bj_IMG_card1.image = self.cards[0]
            self.bj_IMG_card2.image = self.cards[0]
            self.bj_IMG_card3.image = self.cards[0]
            self.bj_BTN_hitMe.isEnabled = true
        })

    }
    
}
