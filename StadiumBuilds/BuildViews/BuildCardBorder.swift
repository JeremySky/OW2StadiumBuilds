import SwiftUI

struct CardBorderViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background {
                ZStack {
                    Color.buildCardBackground
                    RoundedRectangle(cornerRadius: 4) // Thick Corners
                        .stroke(lineWidth: 14)
                        .fill(Color.buildCardBorder)
                    ZStack {
                        RoundedRectangle(cornerRadius: 20) // Horizontal
                            .fill(Color.buildCardBackground)
                            .frame(height: 260)
                            .offset(y: -80)
                        RoundedRectangle(cornerRadius: 20) // Vertical
                            .fill(Color.buildCardBackground)
                            .frame(width: 190)
                    }
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 6))
            .overlay { // Think Border
                RoundedRectangle(cornerRadius: 6)
                    .stroke(lineWidth: 4)
                    .fill(Color.buildCardBorder)
            }
    }
}

extension View {
    func cardBorder() -> some View {
        self.modifier(CardBorderViewModifier())
    }
}
