//
//  PowerView.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/3/25.
//

import SwiftUI

struct PowerView: View {
    let power: Power?
    
    init(_ power: Power?) {
        self.power = power
    }
    
    var body: some View {
        GeometryReader { geo in
            let length: CGFloat = min(geo.size.width, geo.size.height)
            
            ZStack {
                if let power {
                    ZStack {
                        let outerRadius: CGFloat = length * 0.08
                        let outerLength: CGFloat = length * 0.91
                        let innerLength: CGFloat = length * 0.84
                        let spaceBetween: CGFloat = (outerLength - innerLength) / 2
                        let innerRadius: CGFloat = outerRadius - spaceBetween
                        
                        RoundedRectangle(cornerRadius: outerRadius) // main color circle
                            .frame(width: outerLength, height: outerLength)
                        RoundedRectangle(cornerRadius: innerRadius) // empty space between
                            .foregroundStyle(Color.customBlack)
                            .frame(width: innerLength, height: innerLength)
                        
                        let outerRadius2: CGFloat = innerRadius
                        let outerLength2: CGFloat = innerLength
                        let innerLength2: CGFloat = length * 0.77
                        let spaceBetween2: CGFloat = (outerLength2 - innerLength2) / 2
                        let innerRadius2: CGFloat = outerRadius2 - spaceBetween2
                        
                        Image(power.imageString)
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: innerRadius2))
                            .frame(width: innerLength2, height: innerLength2)
                    }
                    .foregroundStyle(Color.accentOrange)
                    .padding(length * 0.03)
                    .background {
                        RoundedRectangle(cornerRadius: 6) // prong
                            .padding(.vertical, (length * 0.16))
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                            .foregroundStyle(Color.accentOrange)
                    }
                    
                    // MARK: - EMPTY View
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.customBlack)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(lineWidth: 1.5)
                                .foregroundStyle(Color.textTertiary)
                        )
                        .frame(width: length * 0.85, height: length * 0.85)
                        .padding(length * 0.03)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#Preview {
    ZStack {
        Color.blueDark.ignoresSafeArea()
        
        HStack {
            PowerView(nil)
            //                .frame(width: 160)
            PowerView(Power(name: "Tokki Slam", description: "During [Boosters], use crouch to slam the ground, dealing damage equal to 25% of your max Armor plus Shield and knocking up enemies hit.", imageString: "Snowball_Flight"))
            //                .frame(width: 160)
        }
        .frame(maxHeight: .infinity)
        
        //        .frame(height: 160)
    }
}
