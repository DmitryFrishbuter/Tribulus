//
//  Copyright © 2017 Dmitry Frishbuter. All rights reserved.
//

import UIKit.NSText

extension TextStyle {

    static func backgroundColor(_ backgroundColor: UIColor) -> TextStyle {
        let attributes = TextStyle()
        attributes.backgroundColor = backgroundColor
        return attributes
    }

    static func baselineOffset(_ baselineOffset: Double?) -> TextStyle {
        let attributes = TextStyle()
        attributes.baselineOffset = baselineOffset
        return attributes
    }

    static func color(_ color: UIColor) -> TextStyle {
        let attributes = TextStyle()
        attributes.color = color
        return attributes
    }

    static func direction(_ direction: GlyphDirection) -> TextStyle {
        let attributes = TextStyle()
        attributes.direction = direction
        return attributes
    }

    static func expansion(_ expansion: Double?) -> TextStyle {
        let attributes = TextStyle()
        attributes.expansion = expansion
        return attributes
    }

    static func font(_ font: UIFont) -> TextStyle {
        let attributes = TextStyle()
        attributes.font = font
        return attributes
    }

    static func kern(_ kern: Double?) -> TextStyle {
        let attributes = TextStyle()
        attributes.kern = kern
        return attributes
    }

    static func ligature(_ ligature: Bool?) -> TextStyle {
        let attributes = TextStyle()
        attributes.ligature = ligature
        return attributes
    }

    static func obliqueness(_ obliqueness: Double) -> TextStyle {
        let attributes = TextStyle()
        attributes.obliqueness = obliqueness
        return attributes
    }

    static func strikethroughStyle(_ strikethroughStyle: NSUnderlineStyle) -> TextStyle {
        let attributes = TextStyle()
        attributes.strikethroughStyle = strikethroughStyle
        return attributes
    }

    static func strikethroughColor(_ strikethroughColor: UIColor) -> TextStyle {
        let attributes = TextStyle()
        attributes.strikethroughColor = strikethroughColor
        return attributes
    }

    static func strokeWidth(_ strokeWidth: Double?) -> TextStyle {
        let attributes = TextStyle()
        attributes.strokeWidth = strokeWidth
        return attributes
    }

    static func strokeColor(_ strokeColor: UIColor) -> TextStyle {
        let attributes = TextStyle()
        attributes.strokeColor = strokeColor
        return attributes
    }

    static func textEffect(_ textEffect: NSAttributedString.TextEffectStyle) -> TextStyle {
        let attributes = TextStyle()
        attributes.textEffect = textEffect
        return attributes
    }

    static func underlineStyle(_ underlineStyle: NSUnderlineStyle) -> TextStyle {
        let attributes = TextStyle()
        attributes.underlineStyle = underlineStyle
        return attributes
    }

    static func underlineColor(_ underlineColor: UIColor) -> TextStyle {
        let attributes = TextStyle()
        attributes.underlineColor = underlineColor
        return attributes
    }

    static func url(_ url: URL?) -> TextStyle {
        let attributes = TextStyle()
        attributes.url = url
        return attributes
    }

    static func alignment(_ alignment: NSTextAlignment) -> TextStyle {
        let attributes = TextStyle()
        attributes.alignment = alignment
        return attributes
    }

    static func allowsTighteningForTruncation(_ allowsTighteningForTruncation: Bool) -> TextStyle {
        let attributes = TextStyle()
        attributes.allowsTighteningForTruncation = allowsTighteningForTruncation
        return attributes
    }

    static func firstLineHeadIndent(_ firstLineHeadIndent: Float?) -> TextStyle {
        let attributes = TextStyle()
        attributes.firstLineHeadIndent = firstLineHeadIndent
        return attributes
    }

    static func headIndent(_ headIndent: Float?) -> TextStyle {
        let attributes = TextStyle()
        attributes.headIndent = headIndent
        return attributes
    }

    static func hyphenationFactor(_ hyphenationFactor: Float?) -> TextStyle {
        let attributes = TextStyle()
        attributes.hyphenationFactor = hyphenationFactor
        return attributes
    }

    static func lineSpacing(_ lineSpacing: Float?) -> TextStyle {
        let attributes = TextStyle()
        attributes.lineSpacing = lineSpacing
        return attributes
    }

    static func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> TextStyle {
        let attributes = TextStyle()
        attributes.lineBreakMode = lineBreakMode
        return attributes
    }

    static func lineHeightMultiplier(_ lineHeightMultiplier: Float?) -> TextStyle {
        let attributes = TextStyle()
        attributes.lineHeightMultiplier = lineHeightMultiplier
        return attributes
    }

    static func maximumLineHeight(_ maximumLineHeight: Float?) -> TextStyle {
        let attributes = TextStyle()
        attributes.maximumLineHeight = maximumLineHeight
        return attributes
    }

    static func minimumLineHeight(_ minimumLineHeight: Float?) -> TextStyle {
        let attributes = TextStyle()
        attributes.minimumLineHeight = minimumLineHeight
        return attributes
    }

    static func paragraphSpacingAfter(_ paragraphSpacingAfter: Float?) -> TextStyle {
        let attributes = TextStyle()
        attributes.paragraphSpacingAfter = paragraphSpacingAfter
        return attributes
    }

    static func paragraphSpacingBefore(_ paragraphSpacingBefore: Float?) -> TextStyle {
        let attributes = TextStyle()
        attributes.paragraphSpacingBefore = paragraphSpacingBefore
        return attributes
    }

    static func tailIndent(_ tailIndent: Float?) -> TextStyle {
        let attributes = TextStyle()
        attributes.tailIndent = tailIndent
        return attributes
    }

    static func fontSize(_ size: CGFloat) -> TextStyle {
        let attributes = TextStyle()
        attributes.fontSize = size
        return attributes
    }

    static func bold(_ bold: Bool) -> TextStyle {
        let attributes = TextStyle()
        attributes.bold = bold
        return attributes
    }

    static func italic(_ italic: Bool) -> TextStyle {
        let attributes = TextStyle()
        attributes.italic = italic
        return attributes
    }
}
