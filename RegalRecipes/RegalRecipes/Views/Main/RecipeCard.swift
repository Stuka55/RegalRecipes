import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    
    var body: some View{
        AsyncImage(url: URL(string: recipe.image)) {image in image} placeholder: {
        Image(systemName: "photo")
        }
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[2])
    }
}
