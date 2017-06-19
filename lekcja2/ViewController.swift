//
//  ViewController.swift
//  lekcja2
//
//  Created by PC on 19.06.2017.
//  Copyright © 2017 PC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var qq = true;
    @IBOutlet weak var helloText: UILabel!
    @IBOutlet weak var btnHello: UIButton!
    @IBOutlet weak var textEntry: UITextField!
    @IBOutlet weak var textField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sayHello(_ btnHello: UIButton) {
        if(qq){
        if(textEntry.text==""){
            textField.numberOfLines=0;
            let alert = UIAlertController(title: "", message: "Nie podałeś imienia", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        else{
            helloText.text = "Hello " + textEntry.text!;
            btnHello.setTitle("Exit", for: .normal);
            textEntry.removeFromSuperview();
            textField.removeFromSuperview();
            qq = false;
        }
        }
        else{
            exit(0);
        }
    }


}

