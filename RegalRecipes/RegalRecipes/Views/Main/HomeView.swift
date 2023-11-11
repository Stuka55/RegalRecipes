import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List(Recipe.all){recipe in Text(recipe.name)}
        }.navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
