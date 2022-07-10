//
//  WordCard.swift
//  LanguageX
//
//  Created by LiJiao on 2022/07/06.
//

import SwiftUI

struct WordCard: View {
    
    var image: String
    var language: String
    var word: String
    var series: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
         
            HStack {
                VStack(alignment: .leading) {
                    Text(language)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(word)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(series.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
         
                Spacer()
            }
            .padding()
        }.overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}

struct WordCard_Previews: PreviewProvider {
    static var previews: some View {
        WordCard(image: "turtlerock", language: "English", word: "Test", series: "Friends-S01-01").previewDevice("iPhone XS Max");
    }
}
