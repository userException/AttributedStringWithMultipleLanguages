//
//  ViewController.swift
//  AttributedStringWithMultipleLanguages
//
//  Created by Nipun on 11/09/19.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblWelcomeMessage: UILabel!
    
    //MARK: View
    override func viewDidLoad() {
        super.viewDidLoad()
        
        handleLocalization()
    }

    func handleLocalization(){
        
        lblWelcomeMessage.attributedText = NSLocalizedString("user_welcome_message", comment: "").changeFontForQuotedWords(with: UIFont.init(name: "Helvetica-Bold", size: lblWelcomeMessage.font.pointSize))
    }
}

