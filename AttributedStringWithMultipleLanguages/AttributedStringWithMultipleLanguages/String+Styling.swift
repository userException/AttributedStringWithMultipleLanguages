//
//  String+Styling.swift
//  AttributedStringWithMultipleLanguages
//
//  Created by Nipun on 11/09/19.
//

import Foundation
import UIKit

extension String{
    func changeFontForQuotedWords(with desiredFont: UIFont?) -> NSAttributedString {
        
        let targetFont = desiredFont ?? UIFont.boldSystemFont(ofSize: 14)
        
        do {
            //Regex to find quoted words
            let regex = try NSRegularExpression(pattern: "\"([^\"]*)\"")
            
            let results = regex.matches(in: self, range: NSRange(self.startIndex..., in: self))
            
            let formattedString = NSMutableAttributedString.init(string: self)
            
            //Apply the font for all the found words
            for result in results{
                formattedString.addAttribute(NSAttributedString.Key.font, value: targetFont, range: result.range)
            }
            
            return formattedString
            
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return NSAttributedString.init(string: self)
        }
    }
}
