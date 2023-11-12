import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    let myPurple = UIColor(hue: 289/360, saturation: 100/100, brightness: 52/100, alpha: 1.0).cgColor
    
    var body: some View{
        VStack {
            AsyncImage(url: URL(string: recipe.image)) {image in
                image
                    .resizable()
                    //.aspectRatio(contentMode: .fill) // todo fix name shifting
                    .overlay(alignment: .bottom){
                        Text(recipe.name)
                          .font(.headline)
                          .foregroundColor(.white)
                          .shadow(color: .black, radius: 4, x: 0, y: 0)
                          .frame(maxWidth: 136)
                          .padding()
                    } // end of overlay modifications
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(alignment: .bottom){
                        Text(recipe.name)
                          .font(.headline)
                          .foregroundColor(.white)
                          .shadow(color: .black, radius: 4, x: 0, y: 0)
                          .frame(maxWidth: 136)
                          .padding()
                    } // end of overlay modifications
            } // end of placeholder.
        
        } // ending brace for vstack. The following are modifications for the VStack
        .frame(width: 160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.purple).opacity(0.3), Color(.purple)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
        
        
    }// end of body: some View
} // end of View


// the following is only for preview
struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[1]) // modify this number to see different items in the array
    }
}
