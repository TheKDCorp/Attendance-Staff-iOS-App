//
//  variables.swift
//  numberPad
//
//  Created by EDUMVA5 on 30/08/18.
//  Copyright © 2018 NMC. All rights reserved.
//

import Foundation

let date = Date()
let time = TimeZone.self
let calendar = Calendar.current
let components = calendar.dateComponents([.year, .month, .day], from: date)

var year =  components.year
var month = components.month
var day = components.day

