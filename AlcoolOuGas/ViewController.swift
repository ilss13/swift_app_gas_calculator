//
//  ViewController.swift
//  AlcoolOuGas
//
//  Created by Igor L S Sousa on 09/02/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var gasPrice: UITextField!
    @IBOutlet var etanolPrice: UITextField!
    @IBOutlet var textResponse: UITextView!
    
    @IBAction func clear(_ sender: Any) {
        gasPrice.text = ""
        etanolPrice.text = ""
        textResponse.text = ""
    }
    @IBAction func calculate(_ sender: Any) {
    
        guard let gasPriceNumber: Float = Float(gasPrice.text ?? ""),
        let etanolPriceNumber: Float = Float(etanolPrice.text ?? "") else {
            return
        }
        
        let media = (etanolPriceNumber/gasPriceNumber)

        if (media > 0.7) {
            textResponse.text = "Abastecer com GASOLINA é mais econômico"
            return;
        }
        textResponse.text = "Abastecer com ETANOL é mais econômico"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gasPrefix = UILabel()
        gasPrefix.text = " R$"
        gasPrefix.sizeToFit()
        
        let etanolPrefix = UILabel()
        etanolPrefix.text = " R$"
        etanolPrefix.sizeToFit()
        
        gasPrice.leftView = gasPrefix
        gasPrice.leftViewMode = .always
        etanolPrice.leftView = etanolPrefix
        etanolPrice.leftViewMode = .always
    }

}
