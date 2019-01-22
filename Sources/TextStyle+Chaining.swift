//
//  Copyright © 2019 Dmitry Frishbuter. All rights reserved.
//

import UIKit.NSText

extension TextStyle {

    func backgroundColor(_ backgroundColor: UIColor) -> TextStyle {
        self.backgroundColor = backgroundColor
        return self
    }

    func baselineOffset(_ baselineOffset: Double?) -> TextStyle {
        self.baselineOffset = baselineOffset
        return self
    }

    func color(_ color: UIColor) -> TextStyle {
        self.color = color
        return self
    }

    func direction(_ direction: GlyphDirection) -> TextStyle {
        self.direction = direction
        return self
    }

    func expansion(_ expansion: Double?) -> TextStyle {
        self.expansion = expansion
        return self
    }

    func font(_ font: UIFont) -> TextStyle {
        self.font = font
        return self
    }

    func kern(_ kern: Double?) -> TextStyle {
        self.kern = kern
        return self
    }

    func ligature(_ ligature: Bool?) -> TextStyle {
        self.ligature = ligature
        return self
    }

    func obliqueness(_ obliqueness: Double) -> TextStyle {
        self.obliqueness = obliqueness
        return self
    }

    func strikethroughStyle(_ strikethroughStyle: NSUnderlineStyle) -> TextStyle {
        self.strikethroughStyle = strikethroughStyle
        return self
    }

    func strikethroughColor(_ strikethroughColor: UIColor) -> TextStyle {
        self.strikethroughColor = strikethroughColor
        return self
    }

    func strokeWidth(_ strokeWidth: Double?) -> TextStyle {
        self.strokeWidth = strokeWidth
        return self
    }

    func strokeColor(_ strokeColor: UIColor) -> TextStyle {
        self.strokeColor = strokeColor
        return self
    }

    func textEffect(_ textEffect: NSAttributedString.TextEffectStyle) -> TextStyle {
        self.textEffect = textEffect
        return self
    }

    func underlineStyle(_ underlineStyle: NSUnderlineStyle) -> TextStyle {
        self.underlineStyle = underlineStyle
        return self
    }

    func underlineColor(_ underlineColor: UIColor) -> TextStyle {
        self.underlineColor = underlineColor
        return self
    }

    func url(_ url: URL?) -> TextStyle {
        self.url = url
        return self
    }

    func alignment(_ alignment: NSTextAlignment) -> TextStyle {
        self.alignment = alignment
        return self
    }

    func allowsTighteningForTruncation(_ allowsTighteningForTruncation: Bool) -> TextStyle {
        self.allowsTighteningForTruncation = allowsTighteningForTruncation
        return self
    }

    func firstLineHeadIndent(_ firstLineHeadIndent: Float?) -> TextStyle {
        self.firstLineHeadIndent = firstLineHeadIndent
        return self
    }

    func headIndent(_ headIndent: Float?) -> TextStyle {
        self.headIndent = headIndent
        return self
    }

    func hyphenationFactor(_ hyphenationFactor: Float?) -> TextStyle {
        self.hyphenationFactor = hyphenationFactor
        return self
    }

    func lineSpacing(_ lineSpacing: Float?) -> TextStyle {
        self.lineSpacing = lineSpacing
        return self
    }

    func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> TextStyle {
        self.lineBreakMode = lineBreakMode
        return self
    }

    func lineHeightMultiplier(_ lineHeightMultiplier: Float?) -> TextStyle {
        self.lineHeightMultiplier = lineHeightMultiplier
        return self
    }

    func maximumLineHeight(_ maximumLineHeight: Float?) -> TextStyle {
        self.maximumLineHeight = maximumLineHeight
        return self
    }

    func minimumLineHeight(_ minimumLineHeight: Float?) -> TextStyle {
        self.minimumLineHeight = minimumLineHeight
        return self
    }

    func paragraphSpacingAfter(_ paragraphSpacingAfter: Float?) -> TextStyle {
        self.paragraphSpacingAfter = paragraphSpacingAfter
        return self
    }

    func paragraphSpacingBefore(_ paragraphSpacingBefore: Float?) -> TextStyle {
        self.paragraphSpacingBefore = paragraphSpacingBefore
        return self
    }

    func tailIndent(_ tailIndent: Float?) -> TextStyle {
        self.tailIndent = tailIndent
        return self
    }
}
