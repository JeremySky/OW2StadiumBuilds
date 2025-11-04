import SwiftUI

struct BuildOverview: View {
    let cost: Int = 3500
    
    var body: some View {
        VStack {
            BuildCostHeader()
                .padding(.top)
                .padding(.vertical)
            
            BuildCardDiv("POWERS")
                .padding(.horizontal)
                .padding(.bottom)
            PowersScrollView()
            
            BuildCardDiv("ITEMS")
                .padding(.horizontal)
            ItemsGridView()
                .padding(.horizontal)
                .padding(.bottom)
        }
        .cardBorder()
    }
}

#Preview {
    ZStack {
        let start = Gradient.Stop(color: .blueDark, location: 0.3)
        let stop = Gradient.Stop(color: .blueLight, location: 1.5)
        LinearGradient(colors: [.blueDark, .blueLight], startPoint: .center, endPoint: .topLeading)
            .ignoresSafeArea()
        LinearGradient(stops: [start, stop], startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            .opacity(0.8)
        Color.blueDark.ignoresSafeArea().opacity(0.4)
        
        BuildOverview()
            .shadow(color: .blueDark, radius: 50)
            .padding()
    }
}

