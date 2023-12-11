import SwiftUI

struct NewRecipesView: View {
    @State private var showAddRecipe = false
    var body: some View {
        NavigationView {
            Button("Add recipe manually"){
                showAddRecipe = true
            }.navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe){
            AddRecipeView()
        }
    }
}

struct NewRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipesView()
    }
}
