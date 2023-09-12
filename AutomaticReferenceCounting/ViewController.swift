//
//  ViewController.swift
//  AutomaticReferenceCounting
//
//  Created by FERDA OLKUN on 12.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var course : WeakCourse? = WeakCourse(name: "iOS Course", url: URL(string: "https://github.com/erenolkun")!)
        
        var instructor : WeakInstructor? = WeakInstructor(name: "Eren OLKUN")
        
        //strong reference
        course?.instructor = instructor
        instructor?.course = course
        
        course = nil
        instructor = nil
        
    }


}

