//
//  ALLocalizableLabel.swift
//  Pods
//
//  Created by Antoine van der Lee on 21/06/15.
//
//

import Foundation
import UIKit

@IBDesignable public class ALLocalizableLabel: UILabel {
    
    @IBInspectable public var localizeString:String = "" {
        didSet {
            #if TARGET_INTERFACE_BUILDER
                let bundle = NSBundle(forClass: type(of: self))
                self.text = bundle.localizedStringForKey(self.localizeString, value:"", table: nil)
                #else
                self.text = NSLocalizedString(self.localizeString, comment:"")
            #endif
        }
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        self.preferredMaxLayoutWidth = self.frame.size.width
        self.layoutIfNeeded()
    }
}
