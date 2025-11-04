import SwiftUI

struct ItemView: View {
    
    let item: StadiumItem?
    
    init(_ item: StadiumItem?) {
        self.item = item
    }
    
    var body: some View {
        GeometryReader { geo in
            let diameter: CGFloat = min(geo.size.width, geo.size.height)
            ZStack {
                
                if let item {
                    ZStack {
                        Circle() // main color circle
                            .frame(width: diameter * 0.91)
                        Circle() // empty space between
                            .foregroundStyle(Color.customBlack)
                            .frame(width: diameter * 0.82)
                        
                        Image(item.imageString)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: diameter * 0.75)
                    }
                    .foregroundStyle(item.rarity.color)
                    .padding(diameter * (item.rarity == .common ? 0.05 : 0.025))
                    .background(getBorderProngs(for: item, with: diameter))
                    .overlay(getStickers(for: item))
                    
                    
                // EMPTY VIEW
                } else {
                    Circle()
                        .fill(Color.customBlack)
                        .overlay(
                            Circle()
                                .stroke(lineWidth: 1.5)
                                .foregroundStyle(Color.textTertiary)
                        )
                        .frame(width: diameter * 0.9)
                        .padding(diameter * 0.025)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
    @ViewBuilder
    private func getBorderProngs(for item: StadiumItem, with diameter: CGFloat) -> some View {
        ZStack {
            if item.rarity == .rare {
                RoundedRectangle(cornerRadius: 6) // prong
                    .padding(.vertical, (diameter * 0.25))
                    .clipShape(Circle())
            }
            
            if item.rarity == .epic {
                ForEach(0..<3, id: \.self) { rotation in
                    RoundedRectangle(cornerRadius: 6) // prong
                        .padding(.horizontal, (diameter * 0.3))
                        .padding(.bottom, diameter * 0.4)
                        .clipShape(Circle())
                        .rotationEffect(Angle(degrees: (360 / 3) * Double(rotation)))
                }
            }
        }
        .foregroundStyle(item.rarity.color)
    }
    
    @ViewBuilder
    private func getStickers(for item: StadiumItem) -> some View {
        HStack {
            ZStack {
                WeaponTypeSticker(item.type)
                if item.important { StarSticker() }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
            
            Spacer()
            
            if !item.notes.isEmpty { NotesSticker() }
        }
    }
}

#Preview {
    VStack {
        ItemView(.compensator)
            .frame(height: 180)
        ItemView(.bloodbound)
            .frame(height: 180)
        ItemView(.salvagedSlugs)
            .frame(height: 180)
    }
    //    .frame(width: 180)
}

