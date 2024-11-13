//
//  File.swift
//
//
//  Created by Rick Street on 10/20/21.
//  Re-compiled for Xcode 15.0
//

import Cocoa
import StringKit

@available(macOS 11.0, *)
public var isDarkAqua: Bool {
    switch NSAppearance.currentDrawing().name {
    case .aqua, .vibrantLight:
        return false
    case .darkAqua, .vibrantDark:
        return true
    default:
        return false
    }
}


public let darkYellow = NSColor(red: 227.0/255.0, green: 159.0/255.0, blue: 58.0/255.0, alpha: 1.0)
public let lightYellow = NSColor(red: 255.0/255.0, green: 255.0/255.0, blue: 198.0/255.0, alpha: 1.0)
public let darkGrey = NSColor(red: 127.0/255.0, green: 127.0/255.0, blue: 127.0/255.0, alpha: 1.0)
public let lightGrey = NSColor(red: 237.0/255.0, green: 237.0/255.0, blue: 237.0/255.0, alpha: 1.0)
public let lightestGray = NSColor(red: 248.0/255.0, green: 248.0/255.0, blue: 248.0/255.0, alpha: 1.0)
public let white = NSColor(red: 255.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1.0)
public let windowBackgroundLight = NSColor(red: 242.0/255.0, green: 242.0/255.0, blue: 244.0/255.0, alpha: 1.0)
public let windowBackgroundDark = NSColor(red: 52.0/255.0, green: 54.0/255.0, blue: 56.0/255.0, alpha: 1.0)
public let lightBlue = NSColor(red: 217.0/255.0, green: 239.0/255.0, blue: 255.0/255.0, alpha: 1.0)
public let mediumBlue = NSColor(red: 149.0/255.0, green: 200.0/255.0, blue: 245.0/255.0, alpha: 1.0)
public let brightBlue = NSColor(red: 0.0/255.0, green: 4.0/255.0, blue: 236.0/255.0, alpha: 1.0)
public let lapis = NSColor(red: 41.0/255.0, green: 50.0/255.0, blue: 186.0/255.0, alpha: 1.0)
public let pink = NSColor(red: 255.0/255.0, green: 231.0/255.0, blue: 235.0/255.0, alpha: 1.0)
public let darkRed = NSColor(red: 137.0/255.0, green: 33.0/255.0, blue: 16.0/255.0, alpha: 1.0)
public let navy = NSColor(red: 4.0/255.0, green: 30.0/255.0, blue: 141.0/255.0, alpha: 1.0)
public let lightNavy = NSColor(red: 135.0/255.0, green: 155.0/255.0, blue: 181.0/255.0, alpha: 1.0)
public let brightNavy = NSColor(red: 40.0/255.0, green: 86.0/255.0, blue: 183.0/255.0, alpha: 1.0)
public let forestGreen = NSColor(red: 0.0/255.0, green: 153.0/255.0, blue: 76.0/255.0, alpha: 1.0)
public let lightForestGreen = NSColor(red: 191.0/255.0, green: 217.0/255.0, blue: 189.0/255.0, alpha: 1.0)
public let brightForestGreen = NSColor(red: 68/255.0, green: 133.0/255.0, blue: 50.0/255.0, alpha: 1.0)
public let black = NSColor.black
public let red = NSColor.red
public let lightRed = NSColor(red: 244.0/255.0, green: 179.0/255.0, blue: 160.0/255.0, alpha: 1.0)
public let brightRed = NSColor(red: 209.0/255.0, green: 59.0/255.0, blue: 62.0/255.0, alpha: 1.0)

@available(macOS 11.0, *)
public var dynamicNavy: NSColor {
    isDarkAqua ? brightNavy : navy
}

@available(macOS 11.0, *)
public var dynamicForestGreen: NSColor {
    isDarkAqua ? brightForestGreen : forestGreen
}

@available(macOS 11.0, *)
public var dynamicRed: NSColor {
    isDarkAqua ? brightRed : red
}

@available(macOS 11.0, *)
public var dynamicBlue: NSColor {
    isDarkAqua ? brightBlue : NSColor.blue
}

@available(macOS 11.0, *)
public var dynamicPink: NSColor {
    print("isDarkAqua \(isDarkAqua)!!!!!!!!!!!!!!!!!!!!!!!")
    return isDarkAqua ? darkRed : pink
}

@available(macOS 11.0, *)
public var dynamicYellow: NSColor {
    print("isDarkAqua \(isDarkAqua)!!!!!!!!!!!!!!!!!!!!!!!!")
    return isDarkAqua ? darkYellow : lightYellow
}

@available(macOS 11.0, *)
public var dynamicWindowBackgroundColor: NSColor {
    print("isDarkAqua \(isDarkAqua)!!!!!!!!!!!!!!!!!!!!!!!!")
    return isDarkAqua ? windowBackgroundDark : windowBackgroundLight
}

public let fontBoldItalic = NSFont(name: "HelveticaNeue-BoldItalic", size: 12.0)!
public let fontLargeBoldItalic = NSFont(name: "HelveticaNeue-BoldItalic", size: 25.0)!
public let fontBoldItalicNormal = NSFont(name: "HelveticaNeue-BoldItalic", size: 12.0)!
public let fontItalic = NSFont(name: "HelveticaNeue-Italic", size: 12.0)!
public let fontNormal = NSFont(name: "HelveticaNeue", size: 12.0)!
public let fontSmall = NSFont(name: "HelveticaNeue", size: 8.0)!
public let fontLabel = NSFont(name: "Helvetica Neue", size: 20.0)!
public let fontAxis = NSFont(name: "Helvetica Neue", size: 20.0)!


public var headerParagraphStyle = NSMutableParagraphStyle()

public var normalParagraphStyle = NSMutableParagraphStyle()

public var convParagraphStyle = NSMutableParagraphStyle()

/*
 public var titleAttribute = [ NSAttributedString.Key.foregroundColor: navy,
 NSAttributedString.Key.font: NSFont(name: "HelveticaNeue-BoldItalic", size: 20.0)!]
 */

@available(macOS 11.0, *)
public var titleAttribute: [NSAttributedString.Key: Any] = [
    .foregroundColor: dynamicNavy,
    .font: fontBoldItalic]


/*
 public var headerAttribute = [ NSAttributedString.Key.foregroundColor: navy,
 NSAttributedString.Key.font: NSFont(name: "HelveticaNeue-Italic", size: 12.0)!]
 */
public var headerAttribute: [NSAttributedString.Key: Any] = [
    .foregroundColor: NSColor.labelColor,
    .font: fontItalic]

/*
 public var normalAttribute = [ NSAttributedString.Key.foregroundColor: black,
 NSAttributedString.Key.font: NSFont(name: "HelveticaNeue", size: 10.0)!]
 */

public var normalAttribute: [NSAttributedString.Key: Any] = [
    .foregroundColor: NSColor.labelColor,
    .font: fontNormal]


/*
 var convAttributes = [ NSAttributedString.Key.foregroundColor: black,
 NSAttributedString.Key.font: NSFont(name: "HelveticaNeue", size: 10.0)!]
 */

/*
 public var smallAttribute = [ NSAttributedString.Key.foregroundColor: navy, NSAttributedString.Key.font: NSFont(name: "HelveticaNeue", size: 6.0)!]
 */

public var attributeSmall: [NSAttributedString.Key: Any] = [
    .foregroundColor: NSColor.labelColor,
    .font: fontSmall]

@available(macOS 11.0, *)
public var attributeLabel: [NSAttributedString.Key: Any] = [
    .foregroundColor: dynamicNavy,
    .font: fontLabel]

public var attributeAxis: [NSAttributedString.Key: Any] = [
    .foregroundColor: NSColor.labelColor,
    .font: fontAxis]

@available(macOS 11.0, *)
public var attributeNormalNavy:  [NSAttributedString.Key: Any] = [
    .foregroundColor: dynamicNavy,
    .font: fontNormal]

@available(macOS 11.0, *)
public var attributeNormalRed:  [NSAttributedString.Key: Any] = [
    .foregroundColor: dynamicRed,
    .font: fontNormal]


public var attributeNormal:  [NSAttributedString.Key: Any] = [
    .foregroundColor: NSColor.labelColor,
    .font: fontNormal]

public var attributeTitle:  [NSAttributedString.Key: Any] = [
    .foregroundColor: NSColor.labelColor,
    .font: fontBoldItalic]

@available(macOS 11.0, *)
public var attributeTitleNavy:  [NSAttributedString.Key: Any] = [
    .foregroundColor: dynamicNavy,
    .font: fontBoldItalic]

public var attributeSubtitle:  [NSAttributedString.Key: Any] = [
    .foregroundColor: NSColor.labelColor,
    .font: fontBoldItalicNormal]



// use superscriptRange and subscriptRange attributed string function

