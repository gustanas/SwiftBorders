//
//  Created by Gustavo Nascimento on 9/14/16.
//  Github:  gustanas
//  Twitter: @gusta_nas

import UIKit

enum Direction {
    case up
    case right
    case bottom
    case left
}

extension UIView {
    func addBorder(direction: Direction, color: UIColor = UIColor(red: 0.78, green: 0.78, blue: 0.80, alpha: 1.0)) {
        let width = CGFloat(1.0)
        let border = CALayer()
        border.borderColor = color.CGColor
        
        let frameCalculator = frameCalculatorForDirection(direction)
        border.frame = frameCalculator(self)
        border.borderWidth = width
        
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
    private func frameCalculatorForDirection(direction: Direction) -> (UIView -> CGRect) {
        let width = CGFloat(1.0)
        switch direction {
        case .up:
            return { view in
                return CGRect(x: 0, y: 0, width: view.frame.size.width, height: width)
            }
        case .right:
            return { view in
                return CGRect(x: view.frame.size.width - width, y: 0, width: width, height: view.frame.size.height)
            }
        case .bottom:
            return { view in
                return CGRect(x: 0, y: view.frame.size.height - width, width: view.frame.size.width, height: view.frame.size.height)
            }
        case .left:
            return { view in
                return CGRect(x: 0, y: 0, width: width, height: view.frame.size.height)
            }
        }
    }
}
