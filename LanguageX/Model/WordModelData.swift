//
//  WordModelData.swift
//  LanguageX
//
//  Created by LiJiao on 2022/07/12.
//

import Foundation
import Combine


final class WordModelData: ObservableObject {
    @Published  var words: [Word] = loadWord("wordsData.json")

}

func loadWord<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

