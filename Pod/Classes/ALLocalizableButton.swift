//
//  ALLocalizableButton.swift
//  Pods
//
//  Created by Antoine van der Lee on 21/06/15.
//
//

import Foundation
import UIKit

@IBDesignable class ALLocalizableButton: UIButton {
    
    @IBInspectable var localizeString:String = "" {
        didSet {
            #if TARGET_INTERFACE_BUILDER
                let bundle = NSBundle(forClass: self.dynamicType)
                self.setTitle(bundle.localizedStringForKey(self.localizeString, value:"", table: nil), forState: UIControlState.Normal)
                #else
                
                self.setTitle(NSLocalizedString(self.localizeString, comment:""), forState: UIControlState.Normal)
            #endif
        }
    }
    
    override func setTitle(title: String?, forState state: UIControlState) {
        
        #if TARGET_INTERFACE_BUILDER
            let bundle = NSBundle(forClass: self.dynamicType)
            super.setTitle(bundle.localizedStringForKey(self.localizeString, value:"", table: nil), forState: UIControlState.Normal)
            #else
            super.setTitle(title, forState: state)
        #endif
    }
    
}