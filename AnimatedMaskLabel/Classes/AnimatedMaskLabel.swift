//
//  AnimatedMaskLabel.swift
//  AnimatedMaskLabel
//
//  Created by JOGENDRA on 06/04/18.
//

import UIKit
import QuartzCore

@IBDesignable
class AnimatedMaskLabel: UIView {

    let gradientLayer: CAGradientLayer = {
        let gradientLayer = CAGradientLayer()

        // Configure the gradient here

        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)

        let colors = [
            UIColor.black.cgColor,
            UIColor.white.cgColor,
            UIColor.black.cgColor
        ]
        gradientLayer.colors = colors

        let locations = [
            0.25,
            0.5,
            0.75
        ]
        gradientLayer.locations = locations as [NSNumber]

        return gradientLayer
    }()

    let textAttributes : [NSAttributedStringKey: AnyObject] = {
        let style = NSMutableParagraphStyle()
        style.alignment = .center

        return [NSAttributedStringKey.font: UIFont(name: "HelveticaNeue-Thin", size: 32.0)!,
                NSAttributedStringKey.paragraphStyle:style
        ]
    }()

    @IBInspectable var text: String! {
        didSet {
            setNeedsDisplay()

            UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
            text.draw(in: bounds, withAttributes: textAttributes)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()

            let maskLayer = CALayer()
            maskLayer.backgroundColor = UIColor.clear.cgColor
            maskLayer.frame = bounds.offsetBy(dx: bounds.width, dy: 0)
            maskLayer.contents = image?.cgImage

            gradientLayer.mask = maskLayer
        }
    }

    override func layoutSubviews() {
        gradientLayer.frame = CGRect(
            x: -bounds.size.width,
            y: bounds.origin.y,
            width: 3 * bounds.size.width,
            height: bounds.size.height)

    }

    override func didMoveToWindow() {
        super.didMoveToWindow()

        layer.addSublayer(gradientLayer)

        let gradientAnimation = CABasicAnimation(keyPath: "locations")
        gradientAnimation.fromValue = [0.0, 0.0, 0.25]
        gradientAnimation.toValue = [0.75, 1.0, 1.0]
        gradientAnimation.duration = 3.0
        gradientAnimation.repeatCount = Float.infinity

        gradientLayer.add(gradientAnimation, forKey: nil)
    }

}

