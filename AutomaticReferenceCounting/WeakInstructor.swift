//
//  WeakInstructor.swift
//  AutomaticReferenceCounting
//
//  Created by FERDA OLKUN on 12.09.2023.
//

import Foundation
class WeakInstructor {
    let name: String
    var course: WeakCourse?
    
    init(name: String) {
        self.name = name
    }
    
    deinit{
        print("Instuctor\(name) deinitilized")
    }
}

class WeakCourse {
    let name: String
    let url: URL
    weak var instructor : WeakInstructor?
    
    
    init(name: String, url: URL) {
        self.name = name
        self.url = url
    }
    
    deinit{
        print("Course\(name) deinitialized")
    }
}

