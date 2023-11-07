import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("My Recipies").navigationTitle("My Recipes")
        }.navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
