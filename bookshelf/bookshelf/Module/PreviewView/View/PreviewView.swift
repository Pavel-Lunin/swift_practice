//
//  PreviewView.swift
//  bookshelf
//
//  Created by Pavel on 24.01.2025.
//

import UIKit
import Lottie

class PreviewView: UIViewController {
    
    lazy var lottieView: LottieAnimationView = {
        $0.frame.size = CGSize(width: view.frame.width - 80, height: view.frame.width - 80)
        $0.center = view.center
        $0.loopMode = .loop
        return $0
    }(LottieAnimationView(name: "bookAnimation"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "BGMain")
        view.addSubview(lottieView)
        lottieView.play()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
        }
    }
}
