import Foundation
import UIKit



class RoundedButton : UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame);
        setupButton();
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        setupButton();
    }

    private func setupButton() {
        backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        layer.cornerRadius = frame.size.height / 2
        setTitleColor(.white, for: .normal)
    }
}
