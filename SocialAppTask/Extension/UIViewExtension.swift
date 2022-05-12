import Foundation
import UIKit

extension UIView {
    
    func applyGradient(colours: [UIColor]) -> Void {
        self.applyGradient(colours: colours, locations: nil)
    }
    
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.type = .axial
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.withAlphaComponent(0.90).cgColor }
        gradient.locations = locations
        gradient.startPoint = CGPoint(x: 0, y: 1)
        gradient.endPoint = CGPoint(x: 1, y: 1)
        self.layer.addSublayer(gradient)
    }
    
    func applyShadow(colour : UIColor, redius: CGFloat, opacity: Float) {
        layer.shadowRadius = redius
        layer.shadowOpacity = opacity
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowColor = colour.cgColor
        layer.masksToBounds = false
    }
}
