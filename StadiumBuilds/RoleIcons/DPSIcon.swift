//
//  DPSIcon.swift
//  StadiumBuilds
//
//  Created by Jeremy Manlangit on 11/1/25.
//

import SwiftUI

struct DPSIcon: View {
    let size: CGSize
    
    var spaceBetween: CGFloat { size.width * 0.12 }
    var bodyWidth: CGFloat { (size.width - (spaceBetween * 2)) / 3 }
    
    var bodyHeight: CGFloat { size.height * 0.5 }
    var triangleHeight: CGFloat { size.height * 0.28 }
    var spacerHeight: CGFloat { size.height * 0.06 }
    var bottomHeight: CGFloat { size.height * 0.16 }
    
    var body: some View {
        HStack(spacing: spaceBetween) {
            ForEach(1...3, id: \.self) { _ in
                VStack(spacing: 0) {
                    Triangle()
                        .frame(height: triangleHeight)
                    Rectangle()
                        .frame(height: bodyHeight)
                    Spacer().frame(height: spacerHeight)
                    Rectangle()
                        .frame(height: bottomHeight)
                }
                .frame(width: bodyWidth)
            }
        }
    }
    
    struct Triangle: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))      // top center
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))   // bottom right
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))   // bottom left
            path.closeSubpath()
            return path
        }
    }
}

#Preview {
    DPSIcon(size: CGSize(width: 10, height: 10))
}
