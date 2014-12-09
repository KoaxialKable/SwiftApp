// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var attr = NSMutableAttributedString(string:"\(str)")
attr.addAttribute(NSStrikethroughStyleAttributeName, value: 2, range: NSMakeRange(0, attr.length))


attr.enumerateAttributesInRange(NSMakeRange(0, attr.length), options: NSAttributedStringEnumerationOptions.LongestEffectiveRangeNotRequired) {
    (Dictionary attrs, NSRange range, Bool safe) -> Void in
    for item in attrs {
        if item.0 == "NSStrikethrough" {
            println("yes")
        }
    }
}

for i in 1...5 {
    println(i)
}

println(attr)


/*

    addToList(newItem)
    {
        if(ItemAlreadyInList)
        {
            // add standardized amount to running total
        }
        else
        {
            // new item
            // add string and begin new running total amount
        }
    }
*/