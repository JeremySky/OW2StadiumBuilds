//
//  NotesSticker.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/4/25.
//

import SwiftUI

struct NotesSticker: View {
    var body: some View {
        Image(systemName: "long.text.page.and.pencil")
            .resizable()
            .scaledToFill()
            .foregroundStyle(Color.accentGold)
            .fontWeight(.bold)
            .frame(width: 22, height: 20)
            .padding(.leading, 7)
            .padding(.trailing, 2)
            .padding(.top, 8)
            .padding(.bottom, 4)
            .background(Color.blueDark)
            .overlay(
                RoundedRectangle(cornerRadius: 7)
                    .stroke(lineWidth: 2)
                    .fill(Color.textPrimary.opacity(0.6)))
            .clipShape(RoundedRectangle(cornerRadius: 7))
            .frame(maxHeight: .infinity, alignment: .top)
    }
}
