//
//  TribulusTests.swift
//  TribulusTests
//
//  Copyright © 2017 Dmitry Frishbuter. All rights reserved.
//

import XCTest
@testable import Tribulus

class TribulusTests: XCTestCase {
    
    var defaultAttributes: TextStyle {
        
        var rawAttributes: RawAttributes = [:]
        rawAttributes[.backgroundColor] = UIColor.red
        rawAttributes[.baselineOffset] = 10.1
        rawAttributes[.foregroundColor] = UIColor.green
        rawAttributes[.verticalGlyphForm] = 1
        rawAttributes[.expansion] = 11.1
        rawAttributes[.font] = UIFont.systemFont(ofSize: 10, weight: .bold)
        rawAttributes[.kern] = 0.8
        rawAttributes[.ligature] = NSNumber(integerLiteral: 1)
        rawAttributes[.strikethroughStyle] = NSUnderlineStyle.patternDashDot.rawValue
        rawAttributes[.strikethroughColor] = UIColor.cyan
        rawAttributes[.strokeWidth] = NSNumber(floatLiteral: 2.1)
        rawAttributes[.strokeColor] = UIColor.blue
        rawAttributes[.obliqueness] = NSNumber(floatLiteral: 14.5)
        rawAttributes[.textEffect] = NSAttributedString.TextEffectStyle.letterpressStyle.rawValue
        rawAttributes[.underlineStyle] = NSUnderlineStyle.patternDot.rawValue
        rawAttributes[.underlineColor] = UIColor.brown
        rawAttributes[.link] = URL(string: "test.com")
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10.2
        paragraphStyle.alignment = .center
        paragraphStyle.lineBreakMode = NSLineBreakMode.byClipping
        paragraphStyle.lineHeightMultiple = 2.5
        paragraphStyle.paragraphSpacing = 12.6
        paragraphStyle.paragraphSpacingBefore = 10.3
        paragraphStyle.headIndent = 8.7
        paragraphStyle.tailIndent = 7.8
        paragraphStyle.firstLineHeadIndent = 6.4
        paragraphStyle.minimumLineHeight = 19.5
        paragraphStyle.maximumLineHeight = 16.2
        paragraphStyle.hyphenationFactor = 3.4
        paragraphStyle.allowsDefaultTighteningForTruncation = true
        
        rawAttributes[.paragraphStyle] = paragraphStyle
        
        let attributes = TextStyle(rawAttributes: rawAttributes)
        return attributes
    }
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - NSAttributedString Attributes
    
    func testThatBeingInitializedCorrectly() {
        let testString = "Foo"
        
        var expectedAttributes: RawAttributes = [:]
        expectedAttributes[.backgroundColor] = defaultAttributes.backgroundColor
        expectedAttributes[.baselineOffset] = defaultAttributes.baselineOffset
        expectedAttributes[.foregroundColor] = defaultAttributes.color
        expectedAttributes[.verticalGlyphForm] = defaultAttributes.direction!.rawValue
        expectedAttributes[.expansion] = defaultAttributes.expansion
        expectedAttributes[.font] = defaultAttributes.font
        expectedAttributes[.kern] = defaultAttributes.kern
        expectedAttributes[.ligature] = defaultAttributes.ligature! ? 1 : 0
        expectedAttributes[.strikethroughStyle] = defaultAttributes.strikethroughStyle!.rawValue
        expectedAttributes[.strikethroughColor] = defaultAttributes.strikethroughColor
        expectedAttributes[.strokeWidth] = defaultAttributes.strokeWidth
        expectedAttributes[.strokeColor] = defaultAttributes.strokeColor
        expectedAttributes[.obliqueness] = defaultAttributes.obliqueness
        expectedAttributes[.textEffect] = defaultAttributes.textEffect!.rawValue
        expectedAttributes[.underlineStyle] = defaultAttributes.underlineStyle!.rawValue
        expectedAttributes[.underlineColor] = defaultAttributes.underlineColor
        expectedAttributes[.link] = defaultAttributes.url
        
        let testParagraphStyle = NSMutableParagraphStyle()
        testParagraphStyle.lineSpacing = CGFloat(defaultAttributes.lineSpacing!)
        testParagraphStyle.alignment = defaultAttributes.alignment!
        testParagraphStyle.lineBreakMode = defaultAttributes.lineBreakMode!
        testParagraphStyle.lineHeightMultiple = CGFloat(defaultAttributes.lineHeightMultiplier!)
        testParagraphStyle.paragraphSpacing = CGFloat(defaultAttributes.paragraphSpacingAfter!)
        testParagraphStyle.paragraphSpacingBefore = CGFloat(defaultAttributes.paragraphSpacingBefore!)
        testParagraphStyle.headIndent = CGFloat(defaultAttributes.headIndent!)
        testParagraphStyle.tailIndent = CGFloat(defaultAttributes.tailIndent!)
        testParagraphStyle.firstLineHeadIndent = CGFloat(defaultAttributes.firstLineHeadIndent!)
        testParagraphStyle.minimumLineHeight = CGFloat(defaultAttributes.minimumLineHeight!)
        testParagraphStyle.maximumLineHeight = CGFloat(defaultAttributes.maximumLineHeight!)
        testParagraphStyle.hyphenationFactor = defaultAttributes.hyphenationFactor!
        testParagraphStyle.allowsDefaultTighteningForTruncation = defaultAttributes.allowsTighteningForTruncation!
        
        expectedAttributes[.paragraphStyle] = testParagraphStyle

        let style = TextStyle
            .backgroundColor(defaultAttributes.backgroundColor!)
            .baselineOffset(defaultAttributes.baselineOffset!)
            .color(defaultAttributes.color!)
            .direction(defaultAttributes.direction!)
            .expansion(defaultAttributes.expansion!)
            .font(defaultAttributes.font!)
            .kern(defaultAttributes.kern!)
            .ligature(defaultAttributes.ligature!)
            .strikethroughStyle(defaultAttributes.strikethroughStyle!)
            .strikethroughColor(defaultAttributes.strikethroughColor!)
            .strokeWidth(defaultAttributes.strokeWidth!)
            .strokeColor(defaultAttributes.strokeColor!)
            .obliqueness(defaultAttributes.obliqueness!)
            .textEffect(defaultAttributes.textEffect!)
            .underlineStyle(defaultAttributes.underlineStyle!)
            .underlineColor(defaultAttributes.underlineColor!)
            .url(defaultAttributes.url!)
            .lineSpacing(defaultAttributes.lineSpacing)
            .alignment(defaultAttributes.alignment!)
            .lineBreakMode(defaultAttributes.lineBreakMode!)
            .lineHeightMultiplier(defaultAttributes.lineHeightMultiplier!)
            .paragraphSpacingAfter(defaultAttributes.paragraphSpacingAfter!)
            .paragraphSpacingBefore(defaultAttributes.paragraphSpacingBefore!)
            .headIndent(defaultAttributes.headIndent!)
            .tailIndent(defaultAttributes.tailIndent!)
            .firstLineHeadIndent(defaultAttributes.firstLineHeadIndent!)
            .minimumLineHeight(defaultAttributes.minimumLineHeight!)
            .maximumLineHeight(defaultAttributes.maximumLineHeight!)
            .hyphenationFactor(defaultAttributes.hyphenationFactor!)
            .allowsTighteningForTruncation(defaultAttributes.allowsTighteningForTruncation!)
        let attributedString = NSAttributedString(string: testString, style: style)
        XCTAssertEqual(testString, attributedString.string)
        
        if let existingAttributes = attributedString.existingAttributes {
            XCTAssertEqual(existingAttributes[.backgroundColor] as! UIColor, expectedAttributes[.backgroundColor] as! UIColor)
            XCTAssertEqual(existingAttributes[.baselineOffset] as! Double, expectedAttributes[.baselineOffset] as! Double)
            XCTAssertEqual(existingAttributes[.foregroundColor] as! UIColor, expectedAttributes[.foregroundColor] as! UIColor)
            XCTAssertEqual(existingAttributes[.verticalGlyphForm] as! Int, expectedAttributes[.verticalGlyphForm] as! Int)
            XCTAssertEqual(existingAttributes[.expansion] as! Double, expectedAttributes[.expansion] as! Double)
            XCTAssertEqual(existingAttributes[.font] as! UIFont, expectedAttributes[.font] as! UIFont)
            XCTAssertEqual(existingAttributes[.kern] as! Double, expectedAttributes[.kern] as! Double)
            XCTAssertEqual(existingAttributes[.ligature] as! Int, expectedAttributes[.ligature] as! Int)
            XCTAssertEqual(existingAttributes[.strikethroughStyle] as! Int, expectedAttributes[.strikethroughStyle] as! Int)
            XCTAssertEqual(existingAttributes[.strikethroughColor] as! UIColor, expectedAttributes[.strikethroughColor] as! UIColor)
            XCTAssertEqual(existingAttributes[.strokeWidth] as! Double, expectedAttributes[.strokeWidth] as! Double)
            XCTAssertEqual(existingAttributes[.strokeColor] as! UIColor, expectedAttributes[.strokeColor] as! UIColor)
            XCTAssertEqual(existingAttributes[.obliqueness] as! Double, expectedAttributes[.obliqueness] as! Double)
            XCTAssertEqual(existingAttributes[.textEffect] as! String, expectedAttributes[.textEffect] as! String)
            XCTAssertEqual(existingAttributes[.underlineStyle] as! Int, expectedAttributes[.underlineStyle] as! Int)
            XCTAssertEqual(existingAttributes[.underlineColor] as! UIColor, expectedAttributes[.underlineColor] as! UIColor)
            XCTAssertEqual(existingAttributes[.link] as! URL, expectedAttributes[.link] as! URL)
            XCTAssertEqual(existingAttributes[.paragraphStyle] as! NSParagraphStyle, expectedAttributes[.paragraphStyle] as! NSParagraphStyle)
        }
        else {
            XCTAssertNotNil(attributedString.existingAttributes)
        }
    }
    
    func testThatCorrectlyAppendsString() {
        let testString = "Foo"
        let stringToAppend = " Bar"
        let expectedString = "Foo Bar"
        let attributedString = NSMutableAttributedString(string: testString, style: .color(.red))
            .append(string: stringToAppend, with: .color(.green))

        XCTAssertEqual(attributedString.string, expectedString)
        let firstColor = attributedString.attribute(.foregroundColor, at: 0, effectiveRange: nil) as? UIColor
        let secondColor = attributedString.attribute(.foregroundColor, at: 3, effectiveRange: nil) as? UIColor
        XCTAssertEqual(firstColor, UIColor.red)
        XCTAssertEqual(secondColor, UIColor.green)
    }
    
    func testThatCorrectlyInsertsString() {
        let testString = "Foo  Baz"
        let stringToInsert = "Bar"
        let expectedString = "Foo Bar Baz"
        let attributedString = NSMutableAttributedString(string: testString, style: .color(.red))
            .insert(string: stringToInsert, with: .color(.green), at: 4)
        XCTAssertEqual(attributedString.string, expectedString)
        let firstColor = attributedString.attribute(.foregroundColor, at: 0, effectiveRange: nil) as? UIColor
        let secondColor = attributedString.attribute(.foregroundColor, at: 4, effectiveRange: nil) as? UIColor
        let thirdColor = attributedString.attribute(.foregroundColor, at: 7, effectiveRange: nil) as? UIColor
        XCTAssertEqual(firstColor, UIColor.red)
        XCTAssertEqual(secondColor, UIColor.green)
        XCTAssertEqual(thirdColor, UIColor.red)
    }
    
    
    func testThatCorrectlyAppendsImage() {
        let testString = "Foo"
        let attributedString = NSMutableAttributedString(string: testString)
        let testImage = UIImage()
        let testBounds = CGRect(x: 10, y: 20, width: 30, height: 40)
        attributedString.append(image: testImage, bounds: testBounds)
        let testStringRange = (attributedString.string as NSString).range(of: testString)
        let imageLocation = testStringRange.location + testStringRange.length
        let attachment = attributedString.attribute(.attachment, at: imageLocation, effectiveRange: nil) as! NSTextAttachment
        XCTAssertEqual(attachment.image, testImage)
        XCTAssertEqual(attachment.bounds, testBounds)
    }
    
    func testThatCorrectlyInsertsImage() {
        let testString = "Foo"
        let attributedString = NSMutableAttributedString(string: testString)
        let testImage = UIImage()
        let testBounds = CGRect(x: 10, y: 20, width: 30, height: 40)
        let imageLocation = 0
        attributedString.insert(image: testImage, bounds: testBounds, at: imageLocation)
        let attachment = attributedString.attribute(.attachment, at: imageLocation, effectiveRange: nil) as! NSTextAttachment
        XCTAssertEqual(attachment.image, testImage)
        XCTAssertEqual(attachment.bounds, testBounds)
    }
    
    func testThatCorrectlyResolvesAttributes() {
        let attributedString = NSMutableAttributedString(string: "Foo")
        let colors: [NSRange: UIColor] = [NSRange(location: 0, length: 1): .red,
                                          NSRange(location: 1, length: 1): .green,
                                          NSRange(location: 2, length: 1): .blue]
        colors.forEach { (range, color) in
            attributedString.applyStyle(.color(color), in: range)
        }
        attributedString.enumerateAttribute(.foregroundColor, in: attributedString.fullRange, options: []) { (value, range, stop) in
            XCTAssertEqual(value as? UIColor, colors[range])
        }
    }
    
    func testThatEmptyStringHasNoAttributes() {
        let attributedString = NSMutableAttributedString(string: "")
        attributedString.applyStyle(.alignment(.center), in: attributedString.fullRange)
        XCTAssertNil(attributedString.existingAttributes)
    }
    
    // MARK: - UIFontDescriptorSymbolicTraits Convenience
    
    func testThatCorrectlySetsFontSize() {
        let attributes = TextStyle()
        attributes.fontSize = 16
        XCTAssertEqual(attributes.fontSize, 16)
        attributes.fontSize = nil
        XCTAssertEqual(attributes.fontSize, 12)
    }
    
    func testThatCorrectlySetsBold() {
        let attributes = TextStyle()
        attributes.bold = true
        XCTAssertTrue(attributes.bold)
        attributes.bold = false
        XCTAssertFalse(attributes.bold)
    }
    
    func testThatCorrectlySetsItalic() {
        let attributes = TextStyle()
        attributes.italic = true
        XCTAssertTrue(attributes.italic)
        attributes.italic = false
        XCTAssertFalse(attributes.italic)
    }
    
    // MARK: - NSParagraphStyle Mapping
    
    func testThatCorrectlyMapsParagraphAttributes() {
        let mutableParagraphStyle = NSMutableParagraphStyle()
        mutableParagraphStyle.lineSpacing = 10.2
        mutableParagraphStyle.alignment = .center
        mutableParagraphStyle.lineBreakMode = .byClipping
        mutableParagraphStyle.lineHeightMultiple = 2.5
        mutableParagraphStyle.paragraphSpacing = 12.6
        mutableParagraphStyle.paragraphSpacingBefore = 10.3
        mutableParagraphStyle.headIndent = 8.7
        mutableParagraphStyle.tailIndent = 7.8
        mutableParagraphStyle.firstLineHeadIndent = 6.4
        mutableParagraphStyle.minimumLineHeight = 19.5
        mutableParagraphStyle.maximumLineHeight = 16.2
        mutableParagraphStyle.hyphenationFactor = 3.4
        mutableParagraphStyle.allowsDefaultTighteningForTruncation = true
        
        let lineSpacing = mutableParagraphStyle.mapAttribute { Float($0.lineSpacing) }
        let alignment = mutableParagraphStyle.mapAttribute { $0.alignment }
        let lineHeightMultiplier = mutableParagraphStyle.mapAttribute { Float($0.lineHeightMultiple) }
        let paragraphSpacingBefore = mutableParagraphStyle.mapAttribute { Float($0.paragraphSpacingBefore) }
        let paragraphSpacingAfter = mutableParagraphStyle.mapAttribute { Float($0.paragraphSpacing) }
        let headIndent = mutableParagraphStyle.mapAttribute { Float($0.headIndent) }
        let tailIndent = mutableParagraphStyle.mapAttribute { Float($0.tailIndent) }
        let firstLineHeadIndent = mutableParagraphStyle.mapAttribute { Float($0.firstLineHeadIndent) }
        let minimumLineHeight = mutableParagraphStyle.mapAttribute { Float($0.minimumLineHeight) }
        let maximumLineHeight = mutableParagraphStyle.mapAttribute { Float($0.maximumLineHeight) }
        let hyphenationFactor = mutableParagraphStyle.mapAttribute { Float($0.hyphenationFactor) }
        let lineBreakMode = mutableParagraphStyle.mapAttribute { $0.lineBreakMode }
        let allowsTighteningForTruncation = mutableParagraphStyle.mapAttribute { $0.allowsDefaultTighteningForTruncation }
        
        XCTAssertEqual(lineSpacing, 10.2)
        XCTAssertEqual(alignment, .center)
        XCTAssertEqual(lineBreakMode, .byClipping)
        XCTAssertEqual(lineHeightMultiplier, 2.5)
        XCTAssertEqual(paragraphSpacingAfter, 12.6)
        XCTAssertEqual(paragraphSpacingBefore, 10.3)
        XCTAssertEqual(headIndent, 8.7)
        XCTAssertEqual(tailIndent, 7.8)
        XCTAssertEqual(firstLineHeadIndent, 6.4)
        XCTAssertEqual(minimumLineHeight, 19.5)
        XCTAssertEqual(maximumLineHeight, 16.2)
        XCTAssertEqual(hyphenationFactor, 3.4)
        XCTAssertEqual(allowsTighteningForTruncation, true)
        
        mutableParagraphStyle.hyphenationFactor = 0.0
        let nilHyphenationFactor = mutableParagraphStyle.mapAttribute { $0.hyphenationFactor }
        XCTAssertNil(nilHyphenationFactor)
    }
}
