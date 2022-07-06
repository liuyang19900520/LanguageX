//
//  CircleImage.swift
//  LanguageX
//
//  Created by LiJiao on 2022/07/06.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("home")
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
