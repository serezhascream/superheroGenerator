//
//  SuperheroGenerator.swift
//  SuperheroGenerator
//
//  Created by Serezha on 01/04/2019.
//  Copyright © 2019 Serezha. All rights reserved.
//

import Foundation

// returns name of superhero
func getSuperheroName(_ firstName:Int, _ lastName:Int, _ sex:Array<Array<String>>) -> String {
    let name = "\(sex[0][firstName]) \(sex[1][lastName])"
    
    return name
}

// returns random name
func getRandomName(_ index:Int) -> String {
    let currentSex:Array = index == 0 ? male : female
    let randomFirstName:Int    = Int(arc4random_uniform(33))
    let randomLastName:Int     = Int(arc4random_uniform(33))
    let name:String            = getSuperheroName(randomFirstName, randomLastName, currentSex)
    
    return name
}
