//
//  RootView.swift
//  Vaulter
//
//  Created by Roman on 03.04.2023.
//

import UIKit

open class RootView: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder: NSCoder) {
        super.init(frame: .zero)
        setup()
    }
    
 
}

@objc extension RootView {
      func setup() {}
}

