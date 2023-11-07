import SwiftUI

struct NewRecipesView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe").navigationTitle("New Recipe")
        }.navigationViewStyle(.stack)
    }
}

struct NewRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipesView()
    }
}
