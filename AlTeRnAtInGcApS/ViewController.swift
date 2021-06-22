//
//  ViewController.swift
//  AlTeRnAtInGcApS
//
//  Created by Daniel Washington Ignacio on 22/06/21.
//

/*
 Create a function that alternates the case of the letters in a string (known as Spongecase).

 Examples

 alternatingCaps("Hello") ➞ "HeLlO"

 alternatingCaps("How are you?") ➞ "HoW aRe YoU?"

 alternatingCaps("OMG this website is awesome!") ➞ "OmG tHiS wEbSiTe Is AwEsOmE!"
 Notes

 The first letter should always be UPPERCASE.
 Ignore spaces.
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.alternatingCaps("Hello"))
        print(self.alternatingCaps("How are you?"))
        print(self.alternatingCaps("OMG this website is awesome!"))
    }

    
    func alternatingCaps(_ str: String) -> String {
        var arr: [String] = []
        var count: Int = 0
        for n in str{
            if  count % 2 != 0{
                arr.append(n.lowercased())
            }else{
                arr.append(n.uppercased())
            }
            count = count + 1
        }
        return "\(arr.joined())"
    }

}

