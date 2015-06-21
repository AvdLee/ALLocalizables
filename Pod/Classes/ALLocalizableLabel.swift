//
//  ALLocalizableLabel.swift
//  Pods
//
//  Created by Antoine van der Lee on 21/06/15.
//
//

import Foundation
import UIKit

@IBDesignable class ALLocalizableLabel: UILabel {
    
    @IBInspectable var localizeString:String = "" {
        didSet {
            #if TARGET_INTERFACE_BUILDER
                let bundle = NSBundle(forClass: self.dynamicType)
                self.text = bundle.localizedStringForKey(self.localizeString, value:"", table: nil)
                #else
                self.text = NSLocalizedString(self.localizeString, comment:"")
            #endif
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.preferredMaxLayoutWidth = self.frame.size.width
        self.layoutIfNeeded()
    }
}
