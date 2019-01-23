//
//  Copyright © 2019 Dmitry Frishbuter. All rights reserved.
//

import UIKit.NSAttributedString

extension NSAttributedString {

    func asMutable() -> NSMutableAttributedString {
        return NSMutableAttributedString(attributedString: self)
    }
}
