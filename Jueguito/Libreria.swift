//
//  Libreria.swift
//  Jueguito
//
//  Created by Alberto Pacheco on 14/10/15.
//  Copyright © 2015 Alberto Pacheco. All rights reserved.
//

import Foundation

func minMax(start:Int, _ end:Int) -> (min:Int, max:Int) {
    let mn = start<end ? start : end
    let mx = start<end ? end : start
    return (mn,mx)
}


func generaNum( start: Int=1, _ end: Int=1000) -> Int {
    let r = minMax(start,end)
    return Int(arc4random_uniform(UInt32(r.max-r.min)))+r.min
}
