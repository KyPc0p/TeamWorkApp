//
//  ProfileInfo.swift
//  TeamWorkApp
//
//  Created by Артём Харченко on 28.03.2022.
//

import Foundation
import UIKit

struct User {
    let login: String
    let password: String
    let person: Person
    var listOfFriends: [Person]
    
    static func getUserData() -> User {
        
        var persons: [Person] = []
        let names = friendList.shared.names
        let surnames = friendList.shared.surnames
        let profileAvatars = friendList.shared.avatar
        let personalInformation = friendList.shared.personalInformation
        
        let iterationCount = min(
            names.count,
            surnames.count,
            profileAvatars.count,
            personalInformation.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: friendList.shared.names[index],
                surname: friendList.shared.surnames[index],
                profileAvatar: friendList.shared.avatar[index],
                personalInfo: friendList.shared.personalInformation[index],
                profilePhotos: friendList.shared.profilePhotos[index]
            )
            persons.append(person)
        }
        
        let sortedPersons = persons.sorted(by: { $0.fullName < $1.fullName })
        let user = User(
            login: "LexDeBash",
            password: "123",
            person: .getPerson(),
            listOfFriends: sortedPersons
        )
        return user
    }
}

struct Person {
    let name: String
    let surname: String
    let profileAvatar: String
    let personalInfo: String
    let profilePhotos: [String]
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Alexey",
            surname: "Efimov",
            profileAvatar: "MyProfilePhoto",
            personalInfo: "IOS developer and teacher at SwiftBook.ru" ,
            profilePhotos: ["Profile1","Profile2","Profile3"]
        )
    }
}
