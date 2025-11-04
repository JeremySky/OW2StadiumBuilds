//
//  BuildCostHeader.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/4/25.
//

import SwiftUI

struct BuildCostHeader: View {
    let cost: Int = 3500
    
    var body: some View {
        HStack {
            Text("BUILD COST: ")
                .foregroundStyle(Color.textSecondary)
            ZStack {
                Image(systemName: "shield")
                    .resizable()
                Rectangle()
                    .frame(width: 10)
                    .foregroundStyle(Color.buildCardBackground)
                Image(systemName: "shield.fill")
                    .resizable()
                    .padding(5)
            }
            .fontWeight(.regular)
            .foregroundStyle(Color.textPrimary)
            .frame(width: 26, height: 26)
            Text("\(cost)")
                .foregroundStyle(Color.textPrimary)
        }
        .font(.headline)
        .fontWeight(.black)
        .kerning(2)
    }
}

#Preview {
    BuildCostHeader()
}
