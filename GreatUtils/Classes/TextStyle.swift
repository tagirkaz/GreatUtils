//
//  TextStyle.swift
//  GreatUtils
//
//  Created by Tagir Nafikov on 25.12.2019.
//

import UIKit


public final class TextStyle {
    
    // MARK: - Public properties
    
    public var font: UIFont?
    public var foregroundColor: UIColor?
    public var backgroundColor: UIColor?
    public var strokeColor: UIColor?
    public var strokeWidth: CGFloat?
    public var strikethroughStyle: Int?
    public var underlineColor: UIColor?
    public var underlineStyle: NSUnderlineStyle?
    public var shadow: NSShadow?
    public var ligature = 1
    public var kerning: CGFloat?
    public var baselineOffset: CGFloat?
    public var obliqueness: CGFloat?
    public var expansion: CGFloat?
    public var paragraphBetween: CGFloat?

    public var shadowOffset: CGSize? {
        didSet {
            if shadow == nil { shadow = NSShadow() }
            shadow?.shadowOffset = shadowOffset ?? CGSize.zero
        }
    }
    
    public var shadowBlurRadius: CGFloat? {
        didSet {
            if shadow == nil { shadow = NSShadow() }
            shadow?.shadowBlurRadius = shadowBlurRadius ?? 0
        }
    }
    
    public var shadowColor: UIColor? {
        didSet {
            if shadow == nil { shadow = NSShadow() }
            shadow?.shadowColor = shadowColor
        }
    }
    
    public var paragraphStyle: NSMutableParagraphStyle? {
        set {
            if let paragraphStyle = newValue {
                internalParagraphStyle = paragraphStyle
            } else {
                isParagraphStyleSet = false
            }
        }
        get {
            return isParagraphStyleSet ? internalParagraphStyle : nil
        }
    }

    public var lineSpacing: CGFloat {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.lineSpacing = newValue
        }
        get { return internalParagraphStyle.lineSpacing }
    }
    
    
    public var alignment: NSTextAlignment {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.alignment = newValue
        }
        get { return internalParagraphStyle.alignment }
    }
    
    public var firstLineHeadIndent: CGFloat {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.firstLineHeadIndent = newValue
        }
        get { return internalParagraphStyle.firstLineHeadIndent }
    }
    
    public var headIndent: CGFloat {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.headIndent = newValue
        }
        get { return internalParagraphStyle.headIndent }
    }
    
    public var tailIndent: CGFloat {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.tailIndent = newValue
        }
        get { return internalParagraphStyle.tailIndent }
    }
    
    public var lineBreakMode: NSLineBreakMode {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.lineBreakMode = newValue
        }
        get { return internalParagraphStyle.lineBreakMode }
    }
    
    public var minimumLineHeight: CGFloat {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.minimumLineHeight = newValue
        }
        get {
            return internalParagraphStyle.minimumLineHeight
        }
    }
    
    public var maximumLineHeight: CGFloat {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.maximumLineHeight = newValue
        }
        get { return internalParagraphStyle.maximumLineHeight }
    }
    
    public var baseWritingDirection: NSWritingDirection {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.baseWritingDirection = newValue
        }
        get { return internalParagraphStyle.baseWritingDirection }
    }
    
    public var lineHeightMultiple: CGFloat {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.lineHeightMultiple = newValue
        }
        get { return internalParagraphStyle.lineHeightMultiple }
    }
    
    public var paragraphSpacing: CGFloat {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.paragraphSpacing = newValue
        }
        get { return internalParagraphStyle.paragraphSpacing }
    }
    
    public var paragraphSpacingBefore: CGFloat {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.paragraphSpacingBefore = newValue
        }
        get { return internalParagraphStyle.paragraphSpacingBefore }
    }
    
    public var hyphenationFactor: Float {
        set {
            isParagraphStyleSet = true
            internalParagraphStyle.hyphenationFactor = newValue
        }
        get { return internalParagraphStyle.hyphenationFactor }
    }

    
    public var textAttributes: [NSAttributedString.Key: Any] {
        var attributes = [NSAttributedString.Key: Any]()
        if let font = font { attributes[.font] = font }
        if let foregroundColor = foregroundColor { attributes[.foregroundColor] = foregroundColor }
        if let backgroundColor = backgroundColor { attributes[.backgroundColor] = backgroundColor }
        if let strokeColor = strokeColor { attributes[.strokeColor] = strokeColor }
        if let strokeWidth = strokeWidth { attributes[.strokeWidth] = strokeWidth }
        if let strikethroughStyle = strikethroughStyle { attributes[.strikethroughStyle] = strikethroughStyle }
        if let underlineColor = underlineColor { attributes[.underlineColor] = underlineColor }
        if let underlineStyle = underlineStyle { attributes[.underlineStyle] = underlineStyle }
        if let shadow = shadow { attributes[.shadow] = shadow }
        if ligature != 1 { attributes[.ligature] = ligature }
        if let kerning = kerning { attributes[.kern] = kerning }
        if let baselineOffset = baselineOffset { attributes[.baselineOffset] = baselineOffset }
        if let obliqueness = obliqueness { attributes[.obliqueness] = obliqueness }
        if let expansion = expansion { attributes[.expansion] = expansion }
        if let paragraphStyle = paragraphStyle { attributes[.paragraphStyle] = paragraphStyle }
        
        return attributes
    }
    
    
    // MARK: - Private properties
    
    private var isParagraphStyleSet = false
    private var internalParagraphStyle = NSMutableParagraphStyle()
    
    
    // MARK: - Init
    
    public init() { }
    
}

