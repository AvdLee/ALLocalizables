//
//  ALLocalizableLabel.swift
//
//  Created by AvdLee on 11/12/14.
//  Copyright (c) 2014 A.vdLee. All rights reserved.
//

import UIKit

@IBDesignable class ALLocalizableLabel: UILabel {

    @IBInspectable var localizeString:String = "" {
        didSet {
            #if TARGET_INTERFACE_BUILDER
                var bundle = NSBundle(forClass: self.dynamicType)
                self.text = bundle.localizedStringForKey(self.localizeString, value:"", table: nil)
            #else
                self.text = NSLocalizedString(self.localizeString, comment:"");
            #endif
        }
    }

}
