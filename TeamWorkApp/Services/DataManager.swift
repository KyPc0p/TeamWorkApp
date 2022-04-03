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
        "Jason", "Darth", "Will", "Tomas", "Kenny",
        "Lady"
    ]
    
    let surnames = [
        "Herrington", "White", "Cook", "Valakas",
        "Statham", "Vader", "Smith", "Shelby",
        "McCormick", "Gaga"
    ]
    
    let avatar = [
        "Billy Herrington", "Walter White", "Tim Cook", "Glad Valakas",
        "Jason Statham","Darth Vader", "Will Smith", "Tomas Shelby",
        "Kenny McCormick", "Lady Gaga"
    ]
    
    let personalInformation = [
        "American model and actor. Born in New York. Gained fame in Japan as an Internet meme, after a clip from one of my videos",
        "Chemistry teacher and good family man. I love my job and children. I don't do anything illegal",
        "American business executive, has been the chief executive officer of Apple Inc. I love thin boxes",
        "Veteran of combat operations of all world wars. Villager streamer.",
        "I love Chinese martial arts, kickboxing and karate, wakeboarding, water skiing, windsurfing and rock climbing.",
        "Let's build another Death Star...again.Long live the Empire! PS: Who is Anakin Skywalker?",
        "Actor, husband I love everything related to cinema. A very well mannered young man.",
        "What can I do to make sure everyone listens to me? Maybe it has something to do with my accent.",
        "9 years old, South Park. I live every day like new. I honestly don't remember what happened yesterday.",
        "American singer, songwriter, and actress. You know who I am."
    ]
    
    let profilePhotos: [[String]] = [
        ["Billy1","Billy2","Billy3"],
        ["Walter1","Walter2","Walter3"],
        ["Tim1","Tim2","Tim3"],
        ["Glad1","Glad2","Glad3"],
        ["Jason1","Jason2","Jason3"],
        ["Darth1","Darth2","Darth3"],
        ["Will1","Will2","Will3"],
        ["Tomas1","Tomas2","Tomas3"],
        ["Kenny1","Kenny2","Kenny3"],
        ["Lady1","Lady2","Lady3"]
    ]
    
    private init() {}
}
