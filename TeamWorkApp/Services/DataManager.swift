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
        "Billy", "Walter", "Tim", "Glad",
        "Jason"
    ]
    
    let surnames = [
        "Herrington", "White", "Cook", "Valakas",
        "Statham"
    ]
    
    let avatar = [
        "Billy Herrington", "Walter White", "Tim Cook",
        "Glad Valakas", "Jason Statham"
    ]
    
    let personalInformation = [
        "American model and actor. Born in North Babylon, New York. Gained fame in Japan as an Internet meme, after a clip from one of my videos",
        "Chemistry teacher and good family man. I love my job and children. I don't give anything illegal",
        "American business executive, has been the chief executive officer of Apple Inc. since 2011!!. I love thin boxes",
        "Veteran of combat operations of all world wars. Villager streamer.",
        "I love Chinese martial arts, kickboxing and karate, wakeboarding, water skiing, windsurfing and rock climbing."
    ]
    
    let profilePhotos: [[String]] = [
        ["Billy1","Billy2","Billy3"],
        ["Walter1","Walter2","Walter3"],
        ["Tim1","Tim2","Tim3"],
        ["Glad1","Glad2","Glad3"],
        ["Jason1","Jason2","Jason3"]
    ]
    
    private init() {}
}
