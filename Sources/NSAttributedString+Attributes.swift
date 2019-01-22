//
//  Copyright © 2017 Dmitry Frishbuter. All rights reserved.
//

import UIKit.NSAttributedString

extension NSAttributedString {
    
    var existingAttributes: RawAttributes? {
        guard length > 0 else {
            return nil
        }
        return attributes(at: length - 1, effectiveRange: nil)
    }
    
    var fullRange: NSRange {
        return NSRange(location: 0, length: length)
    }
    
    /// Returns an NSAttributedString object initialized with a given string and attribute resolver.
    ///
    /// - Parameters:
    ///   - string: The string for the new attributed string.
    ///   - attributes: Attributes for the new attributed string.
    public convenience init(string: String, style: TextStyle) {
        self.init(string: string, attributes: style.rawAttributes)
    }
}


public extension NSMutableAttributedString {
    
    /// Adds the characters and attributes, configured by means of style, to the end of the receiver.
    ///
    /// - Parameters:
    ///   - string: The string whose characters and attributes are added.
    ///   - attributes: Attributes for appended string.
    @discardableResult
    public func append(string: String, with style: TextStyle) -> NSMutableAttributedString {
        let attributedString = NSAttributedString(string: string, attributes: style.rawAttributes)
        append(attributedString)
        return self
    }
    
    /// Inserts the characters of the given string configured with `TextStyle` into the receiver at the given index.
    ///
    /// - Parameters:
    ///   - string: The string whose characters are inserted.
    ///   - attributes: Attributes for inserted string.
    @discardableResult
    public func insert(string: String, with style: TextStyle, at location: Int) -> NSMutableAttributedString {
        let attributedString = NSAttributedString(string: string, attributes: style.rawAttributes)
        insert(attributedString, at: location)
        return self
    }
    
    /// Adds passed image to the end of the receiver.
    ///
    /// - Parameters:
    ///   - image: Image representing the text attachment contents.
    ///   - bounds: The bounds rectangle origin is at the current glyph location on the text baseline. The default value is CGRectZero.
    @discardableResult
    public func append(image: UIImage, bounds: CGRect = .zero) -> NSMutableAttributedString {
        let attachment = NSTextAttachment()
        attachment.image = image
        attachment.bounds = bounds
        append(NSAttributedString(attachment: attachment))
        return self
    }
    
    /// Inserts passed image into the receiver at the given index.
    ///
    /// - Parameters:
    ///   - image: Image representing the text attachment contents.
    ///   - bounds: The bounds rectangle origin is at the current glyph location on the text baseline. The default value is CGRectZero.
    ///   - location: The index at which the image is inserted.
    @discardableResult
    public func insert(image: UIImage, bounds: CGRect = .zero, at location: Int) -> NSMutableAttributedString {
        let attachment = NSTextAttachment()
        attachment.image = image
        attachment.bounds = bounds
        insert(NSAttributedString(attachment: attachment), at: location)
        return self
    }
    
    /// Adds the attributes configured with `TextStyle` to the characters in the specified range.
    ///
    /// - Parameters:
    ///   - range: The range of characters to which the specified attributes apply.
    ///   - resolver: Closure, that allows to configure attributes for specified range of characters.
    @discardableResult
    public func applyStyle(_ style: TextStyle, in range: NSRange) -> NSMutableAttributedString {
        setAttributes(style.rawAttributes, range: range)
        return self
    }
}
