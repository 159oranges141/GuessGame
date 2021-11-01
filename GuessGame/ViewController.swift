//
//  ViewController.swift
//  mid1_410621236
//
//  Created by NDHU_CSIE on 2021/11/1.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ButtonGame : UIButton!
    @IBOutlet weak var ButtonNew : UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ButtonGame.isHidden = true
        view.backgroundColor = UIColor.gray
    }
    
    @IBOutlet var Input : UITextField!
    @IBOutlet var Returns : UILabel!
    var goal: Int? = nil
    var number: Int! = 0
    
    @IBAction func Game(sender: UIButton){
        let inputnum: Int? = Int(Input.text!)
        if inputnum == nil || inputnum! < 1 || inputnum! > 10 {
            let ans = String("Wrong input!! Must be 1 to 10")
            Returns.text = ans
        } else if inputnum! < goal! {
            let ans = String("The goal is over than \(inputnum!).")
            Returns.text = ans
            number = number! + 1
        } else if inputnum! > goal! {
            let ans = String("The goal is less than \(inputnum!).")
            Returns.text = ans
            number += 1
        } else if inputnum! == goal!{
            let ans = String("You are right!")
            Returns.text = ans
            ButtonGame.isHidden = true
            ButtonNew.isHidden = false
            view.backgroundColor = UIColor.green
        } else {
            let ans = String("Wrong input!! Must be 1 to 10")
            Returns.text = ans
        }
        if number == 5 {
            let ans = String("You are failed!")
            Returns.text = ans
            ButtonGame.isHidden = true
            ButtonNew.isHidden = false
            view.backgroundColor = UIColor.red
            }
    }
    
    @IBAction func New(sender: UIButton){
        number = 0
        goal = Int.random(in: 1...10)
        let ans = String("Let`s Start A New Game.")
        Returns.text = ans
        ButtonGame.isHidden = false
        ButtonNew.isHidden = true
        view.backgroundColor = UIColor.white
    }


}

