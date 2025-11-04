//
//  SectionDivider.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/3/25.
//

import SwiftUI

struct BuildCardDiv: View {
    let title: String
    
    init(_ title: String = "") {
        self.title = title
    }
    
    var body: some View {
        HStack {
            if !title.isEmpty {
                Rectangle()
                    .frame(height: 0.8)
                Text(title)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .kerning(1)
                    .foregroundStyle(Color.textSecondary)
            }
            Rectangle()
                .frame(height: 0.8)
        }
        .foregroundStyle(Color.buildSectionalDiv)
        .padding(.horizontal)
    }
}
