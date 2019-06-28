//
//  DrawView.swift
//  iProtein
//
//  Created by Sabrina Sturtevant on 6/28/19.
//  Copyright © 2019 Sabrina Sturtevant. All rights reserved.
//

import UIKit

class DrawView: ViewController {
        
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
    
}
