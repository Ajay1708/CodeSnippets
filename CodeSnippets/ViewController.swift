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
        chaining()
    }
    
    func chaining(){
        //we want to add the squares of all the even numbers from an array of arrays.
        //flatMap: When implemented on sequences Flattens a collection of collections. Here flatMap combines the collection of collections into a single collection
        //Map: Loops over a collection and applies the same operation to each element in the collection.
        //Reduce: Combines all items in a collection to create a single value.
        //Chaining - flatMap + filter + map + reduce
        //Eg: 1
        let arrayInArray = [[11,12,13],[14,15,16]]
        let newValue = arrayInArray.flatMap{$0}.filter{$0 % 2 == 0}.map{$0  * $0}.reduce(0, {$0 + $1})
        print(newValue)
        
        //Eg: 2
        let arrayWith$ = arrayInArray.flatMap{$0}.map{"$\($0)"}
        print(arrayWith$)
    }
}

