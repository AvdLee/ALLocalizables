//
//  ALLocalizableLabel.swift
//  Pods
//
//  Created by Antoine van der Lee on 21/06/15.
//
//

import Foundation
import UIKit

@IBDesignable open class ALLocalizableLabel: UILabel {
    
    @IBInspectable open var localizeString:String = "" {
        didSet {
            #if TARGET_INTERFACE_BUILDER
                let bundle = NSBundle(forClass: type(of: self))
                self.text = bundle.localizedStringForKey(self.localizeString, value:"", table: nil)
                #else
                self.text = NSLocalizedString(self.localizeString, comment:"")
            #endif
        }
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        self.preferredMaxLayoutWidth = self.frame.size.width
        self.layoutIfNeeded()
    }
}
