//
//  TankIcon.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/1/25.
//

import SwiftUI


struct TankIcon: View {
    let size: CGSize
    
    var body: some View {
        Image(systemName: "shield.fill")
            .resizable()
            .scaledToFit()
            .fontWeight(.black)
            .frame(width: size.width, height: size.height)
    }
}

#Preview {
    TankIcon(size: CGSize(width: 10, height: 10))
}
