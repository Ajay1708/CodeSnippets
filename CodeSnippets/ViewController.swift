//
//  ViewController.swift
//  CodeSnippets
//
//  Created by Venkata Ajay Sai Nellori on 11/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        task1()
    }
    
    func task1(){
        //we want to add the squares of all the even numbers from an array of arrays.
        let arrayInArray = [[11,12,13],[14,15,16]]
        var newValue = arrayInArray.flatMap{$0}.filter{$0 % 2 == 0}.map{$0  * $0}.reduce(0, {$0 + $1})
        print(newValue)
    }
}

