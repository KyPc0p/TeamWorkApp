//
//  DataManager.swift
//  TeamWorkApp
//
//  Created by Артём Харченко on 29.03.2022.
//

import Foundation

class friendList {
    
    static let shared = friendList()
    
    let names = [
        "John", "Aaron", "Tim", "Ted",
        "Steven", "Sharon", "Nicola",
        "Allan", "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Butler", "Black", "Robertson",
        "Murphy", "Williams"
    ]
    
    let avatar = [
        "jjjj@mail.ru", "aaaa@mail.ru", "eeee@mail.ru",
        "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru",
        "xxxx@mail.ru", "pppp@mail.ru", "ssss@mail.ru",
        "llll@mail.ru"
    ]
    
    let personalInformation = [
        "745396026", "145036843", "287185656", "293520954",
        "562880225", "738594072", "825654134", "645898473",
        "432349845", "459477625"
    ]
    
    let profilePhotos: [[String]] = [
        ["JohnsPhoto1","JohnsPhoto2","JohnsPhoto3"],
        ["John1","John2","John3"],
        ["Photo1","Photo2","Photo3"],
        ["JohnsPhoto1","JohnsPhoto2","JohnsPhoto3"],
        ["John1","John2","John3"],
        ["John1","John2","John3"],
        ["Photo1","Photo2","Photo3"],
        ["JohnsPhoto1","JohnsPhoto2","JohnsPhoto3"],
        ["John1","John2","John3"],
        ["Photo1","Photo2","Photo3"],
    ]
    
}
