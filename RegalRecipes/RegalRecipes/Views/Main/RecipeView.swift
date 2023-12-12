import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView{
            // add the async image
            
            VStack(spacing: 30){
                Text(recipe.name).font(.largeTitle).bold().multilineTextAlignment(.center)
                
                AsyncImage(url: URL(string: recipe.image)){image in image
                        .resizable()
                        .scaledToFit()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxHeight: 400)
                        .border(.purple, width: 5)
                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(.white.opacity(0.7))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .background(LinearGradient(gradient: Gradient(colors: [Color(.purple).opacity(0.3), Color(.purple)]), startPoint: .top, endPoint: .bottom))
                .frame(maxHeight: 400)
                
                
                VStack(alignment: .leading, spacing: 30){
                    
                    // Vertical stack for the description elements
                    VStack(alignment: .leading, spacing: 5){
                        Text("Description").font(.title)
                        
                        if recipe.description.isEmpty{
                            Text("No description provided").padding(.leading, 20)
                        }
                        else{
                            Text(recipe.description).padding(.leading, 20)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text("Ingredients").font(.title)
                        
                        if recipe.ingredient.isEmpty{
                            Text("No ingredients provided").padding(.leading, 20)
                        }
                        else{
                            Text(recipe.ingredient).padding(.leading, 20)
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text("Directions").font(.title)
                        
                        if recipe.directions.isEmpty{
                            Text("No directions provided").padding(.leading, 20)
                        }
                        else{
                            Text(recipe.directions).padding(.leading, 20)
                        }
                    }

                }.frame(maxWidth: .infinity, alignment: .leading)
            }.padding(.horizontal)
        }
    } // end of body
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[1])
    }
}
