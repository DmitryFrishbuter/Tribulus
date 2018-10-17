//
//  Copyright © 2017 Dmitry Frishbuter. All rights reserved.
//

import UIKit.NSParagraphStyle

extension NSParagraphStyle {
    
    func mapAttribute<U: Equatable>(descriptor: (NSParagraphStyle) -> U) -> U? {
        let x = descriptor(self)
        let y = descriptor(NSParagraphStyle.default)
        return (x == y) ? nil : x
    }
}
