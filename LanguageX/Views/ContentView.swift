import SwiftUI

struct ContentView: View {
    var body: some View {
        WordCardList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(WordModelData())
    }
}
