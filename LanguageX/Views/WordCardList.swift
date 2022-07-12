//
//  WordCardList.swift
//  LanguageX
//
//  Created by LiJiao on 2022/07/12.
//

import SwiftUI

struct WordCardList: View {
    @EnvironmentObject var modelData: WordModelData
    @State private var showFavoritesOnly = false

    var filteredWords: [Word] {
        modelData.words.filter { word in
            (!showFavoritesOnly || word.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(filteredWords) { word in
                    NavigationLink {
                        
                    } label: {
                        WordCard(word: word)
                    }
                }
            }
            .navigationTitle("WordList")
        }
    }
}

struct WordCardList_Previews: PreviewProvider {
    static var previews: some View {
        WordCardList()
            .environmentObject(WordModelData())
    }
}
