//
//  TableLogic.swift
//  M7_JCW_TableView
//
//  Created by Justin Woodard on 2/22/24.
//

import Foundation

struct TableLogic {
    
    var courses = [
        NameNumber(name: "Introduction to Computer Science I", number: "CPSC 1210"),
        NameNumber(name: "Introduction to Computer Science II", number: "CPSC 1220"),
        NameNumber(name: "Data Structures", number: "CPSC 1230"),
        NameNumber(name: "Software Construction", number: "CPSC 2710"),
        NameNumber(name: "Discrete Structures", number: "CPSC 3240"),
        NameNumber(name: "Assembly Programming", number: "CPSC 3300"),
        NameNumber(name: "Operating Systems", number: "CPSC 3330"),
        NameNumber(name: "Computer Ethics", number: "CPSC 4730"),
        NameNumber(name: "Mobile Applications I", number: "CPSC 5330"),
        NameNumber(name: "Mobile Applications II", number: "CPSC 5340")
    ]
    
    var selection : Int = 0
    
    mutating func setSelection(_ inInt : Int){
        self.selection = inInt
    }
}
