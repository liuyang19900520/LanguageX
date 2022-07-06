//
//  WordCard.swift
//  LanguageX
//
//  Created by LiJiao on 2022/07/06.
//

import SwiftUI

struct WordCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            
            HStack {
                Text("English")
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
            
            Text("Turtle Rock")
                .font(.title)
            
    
            Divider()
            
  
        }
        .padding()
    }
}

struct WordCard_Previews: PreviewProvider {
    static var previews: some View {
        WordCard()
    }
}
