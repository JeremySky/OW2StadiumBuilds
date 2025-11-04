//
//  BuildHeader.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/3/25.
//

import SwiftUI

struct BuildHeader: View {
    let title: String = "D.Va Tokki Slam High Armor | 18.5 [WIP]"
    let author: String = "Lucy"
    let lastUpdated: Date = Date.init(timeInterval: -1000, since: .now)
    let views: Int = 106
    let likes: Int = 2
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    Image("dva")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .padding(.horizontal, 8)
                        .background(
                            ZStack {
                                Color.textPrimary
                                    .clipShape(RoundedRectangle(cornerRadius: 6))
                                LinearGradient(colors: [.rarityRare, .textSecondary], startPoint: .topLeading, endPoint: .bottomTrailing)
                                    .clipShape(RoundedRectangle(cornerRadius: 6))
                                    .padding(.horizontal, 5)
                            }
                        )
                }
                
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.title3)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.textPrimary)
                    HStack(spacing: 0) {
                        Text("Created by ")
                            .font(.headline)
                        Text(author)
                            .font(.headline)
                            .foregroundStyle(.orange)
                    }
                    Text("Last updated \(lastUpdated.timeAgoString())")
                        .font(.caption)
                }
            }
            
            HStack(spacing: 20) {
                HStack {
                    Image(systemName: "eye")
                    Text(String(views))
                }
                HStack {
                    Image(systemName: "heart")
                    Text(String(likes))
                }
                HStack {
                    Image(systemName: "bubble")
                    Text("Comments")
                }
                Spacer()
            }
            .padding(.top)
        }
        .foregroundStyle(Color.textSecondary)
    }
}

#Preview {
    ZStack {
        Color.blueDark.ignoresSafeArea()
        BuildHeader()
    }
}

