//
//  RegistViewPresenter.swift
//  bookshelf
//
//  Created by Pavel on 10.02.2025.
//

import Foundation

protocol RegistViewPresenterProtocol: AnyObject {
    
}

class RegistViewPresenter: RegistViewPresenterProtocol {
    weak var view: (any RegistViewProtocol)?
    
    init(view: any RegistViewProtocol){
        self.view = view
    }
}
