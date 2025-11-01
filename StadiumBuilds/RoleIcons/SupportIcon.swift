//
//  SupIcon.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/1/25.
//

import SwiftUI

struct SupportIcon: View {
    let size: CGSize
    
    var body: some View {
        Image(systemName: "plus")
            .resizable()
            .scaledToFit()
            .fontWeight(.black)
            .frame(width: size.width, height: size.height)
    }
}

#Preview {
    SupportIcon(size: CGSize(width: 10, height: 10))
}
