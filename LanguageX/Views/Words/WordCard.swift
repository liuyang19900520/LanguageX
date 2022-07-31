//
//  WordCard.swift
//  LanguageX
//
//  Created by LiJiao on 2022/07/06.
//

import SwiftUI

struct WordCard: View {
    var word: Word
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                VStack(alignment: .leading){
                    Text(word.english)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Spacer()
                }
                Text(word.chinese)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding()
                Text(word.japanese)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .padding()
            }
            
            Spacer()
            
            if word.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct WordCard_Previews: PreviewProvider {
    static var words = WordModelData().words
    
    static var previews: some View {
        Group {
            WordCard(word: words[0])
            WordCard(word: words[1])
        }
        .previewLayout(.fixed(width: 300, height: 200))
    }
}
