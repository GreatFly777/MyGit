//
//  RectangleLayer.swift
//  开启动画
//
//  Created by Linwei Zhu on 16/6/21.
//  Copyright © 2016年 yurong. All rights reserved.
//

import Foundation
import UIKit

class RectangleLayer: CAShapeLayer {
    override init() {
        super.init()
        fillColor = UIColor.clearColor().CGColor
        lineWidth = 5.0
        path = rectangleFullPath.CGPath
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var rectangleFullPath:UIBezierPath{
        let rectanglePath = UIBezierPath()
        rectanglePath.moveToPoint(CGPoint(x: 0.0, y: 100.0))
        rectanglePath.addLineToPoint(CGPoint(x: 0.0, y: -lineWidth))
        rectanglePath.addLineToPoint(CGPoint(x: 100.0, y: -lineWidth))
        rectanglePath.addLineToPoint(CGPoint(x: 100.0, y: 100.0))
        rectanglePath.addLineToPoint(CGPoint(x: -lineWidth / 2, y: 100.0))
        rectanglePath.closePath()
        return rectanglePath
    }
    
    func strokeChangeWithcolor(color:UIColor) {
        strokeColor = color.CGColor
        let strokeAnimation:CABasicAnimation = CABasicAnimation(keyPath:"strokeEnd")
        strokeAnimation.fromValue = 0.0
        strokeAnimation.toValue = 1.0
        strokeAnimation.duration = 0.4
        self.addAnimation(strokeAnimation, forKey: nil)
        
    }
}