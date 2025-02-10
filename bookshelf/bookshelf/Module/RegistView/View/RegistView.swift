//
//  RegistView.swift
//  bookshelf
//
//  Created by Pavel on 10.02.2025.
//

import UIKit
import SwiftUI

protocol RegistViewProtocol:BaseViewProtocol {
    
}

class RegistView: UIViewController, BaseViewProtocol {
    typealias PresenterType = RegistViewPresenterProtocol
    var presenter: PresenterType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contentView = RegistViewContent()
        let content = UIHostingController(rootView: contentView)
        addChild(content)
        content.view.frame = view.bounds
        view.addSubview(content.view)
    }
}
