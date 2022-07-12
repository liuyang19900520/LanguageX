//
//  Word.swift
//  LanguageX
//
//  Created by LiJiao on 2022/07/12.
//

import Foundation
import SwiftUI


struct Word: Hashable, Codable ,Identifiable{
    var id: Int
    var chinese: String
    var english: String
    var japanese: String
    var inputType: String
    var series:String
    var episode:String
    var isFavorite: Bool
    
}
