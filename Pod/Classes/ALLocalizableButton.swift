//
//  ALLocalizableButton.swift
//  Pods
//
//  Created by Antoine van der Lee on 21/06/15.
//
//

import Foundation
import UIKit

@IBDesignable public class ALLocalizableButton: UIButton {
    
    @IBInspectable public var localizeString:String = "" {
        didSet {
            #if TARGET_INTERFACE_BUILDER
                let bundle = NSBundle(forClass: type(of: self))
                self.setTitle(bundle.localizedStringForKey(self.localizeString, value:"", table: nil), forState: UIControlState.Normal)
                #else
                
                self.setTitle(NSLocalizedString(self.localizeString, comment:""), for: UIControlState.normal)
            #endif
        }
    }
    
    public override func setTitle(_ title: String?, for state: UIControlState) {
        #if TARGET_INTERFACE_BUILDER
            let bundle = NSBundle(forClass: type(of: self))
            super.setTitle(bundle.localizedStringForKey(self.localizeString, value:"", table: nil), forState: UIControlState.Normal)
            #else
            super.setTitle(title, for: state)
        #endif
    }
    
}
