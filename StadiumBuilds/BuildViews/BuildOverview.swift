import SwiftUI

struct BuildOverview: View {
    let views: Int = 10
    let likes: Int = 2
    
    var body: some View {
        VStack {
            BuildCostHeader()
                .padding(.top)
                .padding(.vertical)
            
            BuildCardDiv("POWERS")
                .padding(.bottom)
            PowersScrollView()
            
            BuildCardDiv("ITEMS")
            ItemsGridView()
                .padding(.horizontal)
            
            BuildCardDiv()
            
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
            }
            .kerning(1)
            .foregroundStyle(Color.textPrimary)
            .padding(.vertical)
            .padding(.bottom, 12)
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

