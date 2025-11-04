import SwiftUI

struct ItemsGridView: View {
    
    let items: [StadiumItem?] // Inject
    
    init() {
        var items: [StadiumItem?]  = [.bloodbound, .bloodbound, .compensator, .refresher, nil, nil]
        items[1]?.important = true
        items[1]?.notes = "Take this or that"
        items[0]?.notes = "Keep for max damage"
        self.items = items
    }
    
    private let backgroundColor: Color = .customBlack
    
    var body: some View {
        VStack {
            ForEach(0...1, id: \.self) { rowIndex in
                HStack(spacing: 0) {
                    ForEach(0..<3, id: \.self) { columnIndex in
                        let i = rowIndex * 3 + columnIndex
                        ItemView(items[i])
                            .frame(height: 85)
                    }
                }
                .padding(.bottom)
            }
        }
        .padding(.top, 10)
    }
}

#Preview {
    ZStack {
        Color.blueDark.ignoresSafeArea()
        ItemsGridView()
    }
}
