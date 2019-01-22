//
//  Copyright © 2017 Dmitry Frishbuter. All rights reserved.
//

import UIKit.NSText

extension Attributes {
    
    var rawAttributes: RawAttributes {
        var result: RawAttributes = [:]
        result[.backgroundColor] = backgroundColor
        result[.baselineOffset] = baselineOffset
        result[.foregroundColor] = color
        result[.verticalGlyphForm] = direction?.rawValue
        result[.expansion] = expansion
        result[.font] = font
        result[.kern] = kern
        if let ligature = ligature {
            result[.ligature] = ligature ? 1 : 0
        }
        if let paragraphStyle = paragraphStyle {
            result[.paragraphStyle] = paragraphStyle
        }
        result[.strikethroughStyle] = strikethroughStyle?.rawValue
        result[.strikethroughColor] = strikethroughColor
        result[.strokeWidth] = strokeWidth
        result[.strokeColor] = strokeColor
        result[.obliqueness] = obliqueness
        result[.textEffect] = NSAttributedString.TextEffectStyle.letterpressStyle.rawValue
        result[.underlineStyle] = underlineStyle?.rawValue
        result[.underlineColor] = underlineColor
        result[.link] = URL
        
        return result
    }
    
    convenience init(rawAttributes attributes: RawAttributes) {
        self.init()
        
        backgroundColor = attributes[.backgroundColor] as? UIColor
        if let baselineOffset = attributes[.baselineOffset] as? NSNumber {
            self.baselineOffset = baselineOffset.doubleValue
        }
        color = attributes[.foregroundColor] as? UIColor
        if let direction = attributes[.verticalGlyphForm] as? Int {
            self.direction = GlyphDirection(rawValue: direction)
        }
        if let expansion = attributes[.expansion] as? NSNumber {
            self.expansion = expansion.doubleValue
        }
        font = attributes[.font] as? UIFont
        if let kern = attributes[.kern] as? NSNumber {
            self.kern = kern.doubleValue
        }
        if let ligature = attributes[.ligature] as? Int {
            self.ligature = (ligature == 1)
        }
        obliqueness = attributes[.obliqueness] as? Double
        if let strikethroughStyle = attributes[.strikethroughStyle] as? Int {
            self.strikethroughStyle = NSUnderlineStyle(rawValue: strikethroughStyle)
        }
        strikethroughColor = attributes[.strikethroughColor] as? UIColor
        strokeWidth = attributes[.strokeWidth] as? Double
        strokeColor = attributes[.strokeColor] as? UIColor
        if let rawTextEffect = attributes[.textEffect] as? NSAttributedString.TextEffectStyle.RawValue {
            textEffect = NSAttributedString.TextEffectStyle(rawValue: rawTextEffect)
        }
        if let underlineStyle = attributes[.underlineStyle] as? Int {
            self.underlineStyle = NSUnderlineStyle(rawValue: underlineStyle)
        }
        underlineColor = attributes[.underlineColor] as? UIColor
        URL = attributes[.link] as? URL
        
        if let paragraph = attributes[.paragraphStyle] as? NSParagraphStyle {
            alignment = paragraph.mapAttribute { $0.alignment }
            lineSpacing = paragraph.mapAttribute { Float($0.lineSpacing) }
            lineHeightMultiplier = paragraph.mapAttribute { Float($0.lineHeightMultiple) }
            paragraphSpacingBefore = paragraph.mapAttribute { Float($0.paragraphSpacingBefore) }
            paragraphSpacingAfter = paragraph.mapAttribute { Float($0.paragraphSpacing) }
            headIndent = paragraph.mapAttribute { Float($0.headIndent) }
            tailIndent = paragraph.mapAttribute { Float($0.tailIndent) }
            firstLineHeadIndent = paragraph.mapAttribute { Float($0.firstLineHeadIndent) }
            minimumLineHeight = paragraph.mapAttribute { Float($0.minimumLineHeight) }
            maximumLineHeight = paragraph.mapAttribute { Float($0.maximumLineHeight) }
            hyphenationFactor = paragraph.mapAttribute { Float($0.hyphenationFactor) }
            lineBreakMode = paragraph.mapAttribute { $0.lineBreakMode }
            if #available(iOS 9.0, *) {
                allowsTighteningForTruncation = paragraph.mapAttribute { $0.allowsDefaultTighteningForTruncation }
            }
        }
    }
}
