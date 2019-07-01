//
//  DrawView.swift
//  iProtein
//
//  Created by Sabrina Sturtevant on 6/28/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//

import UIKit

var currentPosition: CGPoint?


class DrawView: ViewController {
    
    
    override func drawRect(rect: CGRect) {
        context?.setLineWidth(2.0)
        context?.setStrokeColor(UIColor.black.cgColor)
        
        
        context?.move(to: currentPosition!)
        context?.addLine(to: CGPoint(x: 400, y: 300))
        context?.strokePath()
        print("c")
    }
    
}
    
    
    /*
    func drawRect(rect: CGRect) {
        //context is the object used for drawing
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(2.0)
        context?.setStrokeColor(UIColor.black.cgColor)
        
        
        //straightline
        context?.move(to: currentPosition!)
        context?.addLine(to: CGPoint(x: 10, y:10))
        
        
        //actually draws path
        context?.strokePath()
        
    }
        
        
        //finds and stores where user tapped
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            if let touch = touches.first {
                currentPosition = touch.location(in: view)
                print(currentPosition)
            }
        }
        
        
        
    
    
    var isDrawing = false
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard !isDrawing else { return }
        isDrawing = true
        guard let touch = touches.first else { return }
        let currentPoint = touch.location(in: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isDrawing else { return }
        guard let touch = touches.first else { return }

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard isDrawing else { return }
        isDrawing = false
        guard let touch = touches.first else { return }

    }

    */

