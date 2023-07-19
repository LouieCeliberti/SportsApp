//
//  athleteInfo.swift
//  First IOS App
//
//  Created by Louie Celiberti on 7/18/23.
//

import Foundation


struct athleteInfo: Identifiable{
    let id = UUID()
    let name: String
    var isCurrentlyPlaying: Bool
}
