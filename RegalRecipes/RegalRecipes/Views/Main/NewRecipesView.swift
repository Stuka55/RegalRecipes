//
//  NewRecipesView.swift
//  RegalRecipes
//
//  Created by Marilyn Diebold on 11/6/23.
//

import SwiftUI

struct NewRecipesView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe").navigationTitle("New Recipe")
        }
    }
}

struct NewRecipesView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipesView()
    }
}
