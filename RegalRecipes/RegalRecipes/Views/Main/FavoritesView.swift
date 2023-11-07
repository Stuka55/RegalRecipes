import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You have not saved any recipes to your favorites yet.").padding().navigationTitle("Favorites")
        }.navigationViewStyle(.stack)
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
