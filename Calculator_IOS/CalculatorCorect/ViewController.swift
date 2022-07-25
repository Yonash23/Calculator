//
//  ViewController.swift
//  CalculatorCorect
//
//  Created by Йонаш Стан on 13.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var numbersOnScreen: Double = 0;
    var previousNumber: Double = 0;
    var perfotmingMath = false
    var operation = 0
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttons(_ sender: UIButton) {
        if sender.tag == 17{
            label.text = "-"
            perfotmingMath = false
        }
        else if perfotmingMath == true {
            label.text = String(sender.tag)
            numbersOnScreen = Double(label.text!)!
            perfotmingMath = false
        }
        else {
            label.text = label.text! + String(sender.tag)
            numbersOnScreen = Double(label.text!)! //numere care apar pe ecran
        }
        
        
    }
    
    @IBAction func buttons_func(_ sender: UIButton) {
        
        
        
        if label.text != "" && sender.tag != 10 && sender.tag != 20{
            previousNumber = Double(label.text!)!
            
            if sender.tag == 11 {
                label.text = "x" ;
            }
            
            if sender.tag == 12 {
                label.text = "-";
            }
            
            if sender.tag == 13 {
                label.text = "+";
            }
            
            if sender.tag == 14 {
                label.text = "."
                print(".")
            }
            
            if sender.tag == 15 {
                label.text = "/";
            }
            
            if sender.tag == 16 {
                label.text = "^"
            }
            
            operation=sender.tag
            perfotmingMath = true
            
            
            
        }
        else if sender.tag == 20 { // egal

            if operation == 11{ //inmultire
                label.text = String(previousNumber * numbersOnScreen)
            }

            else if operation == 12{ //scadere
                label.text = String(previousNumber - numbersOnScreen )
                }

            else if operation == 13{ //adunare
                label.text = String(previousNumber + numbersOnScreen)
                }
            }
            
//            else if operation == 14{ //punct
//                let punct = "."
//                label.text = String(previousNumber) + punct
//            }
            
            else if operation == 15{ //despartire
                label.text = String(previousNumber / numbersOnScreen)
            }
            
            else if operation == 16{ //percent
                label.text = String(pow(previousNumber,numbersOnScreen))
                
                //print(label.text! as Any)
            }
            
            
            else if sender.tag == 10{
            label.text = ""
                previousNumber = 0;
                numbersOnScreen = 0;
                operation = 0;
            }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
}
