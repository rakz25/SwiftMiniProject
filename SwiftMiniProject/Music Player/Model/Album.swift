//
//  Album.swift
//  SwiftMiniProject
//
//  Created by Rakesh Lahkar on 26/04/22.
//

import Foundation
import UIKit

struct Album {
    
    var name: String
    var image: String
    var song: [Song]
    
}

extension Album {
    
    
    //Contains unique tunes and lyrics
    static func get() -> [Album]{
        return [
        Album(name: "Accoustic", image:"accoustic", song:[Song(name: "Accoustic Breeze", artist: "BenSound", image: "accoustic", fileName: "bensound-creativeminds")]),
        Album(name: "Jazz", image:"cinematic", song: [Song(name: "Accoustic Breeze", artist: "BenSound", image: "accoustic", fileName: "bensound-creativeminds")]),
        Album(name: "Cinematic", image:"jazz", song: [Song(name: "Accoustic Breeze", artist: "BenSound", image: "accoustic", fileName: "bensound-creativeminds")]),
        Album(name: "Unique-Tunes", image:"jazz", song: [Song(name: "Accoustic Breeze", artist: "BenSound", image: "accoustic", fileName: "bensound-creativeminds")]),
        Album(name: "Lyrics", image:"jazz", song: [Song(name: "Accoustic Breeze", artist: "BenSound", image: "accoustic", fileName: "bensound-creativeminds")])
    
        ]
        
                
    }
}
