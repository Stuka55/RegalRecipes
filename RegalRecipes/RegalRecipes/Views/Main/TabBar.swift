//
//  TabBar.swift
//  RegalRecipes
//
//  Created by Marilyn Diebold on 11/6/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView().tabItem{
                Label("Home", systemImage: "house")
            }
            CatagoriesView().tabItem{
                Label("Catagories", systemImage: "square.fill.text.grid.1x2")
            }
            NewRecipesView().tabItem{
                Label("New", systemImage: "plus")
            }
            FavoritesView().tabItem{
                Label("Favorites", systemImage: "heart")
            }
            SettingsView().tabItem{
                Label("Settings", systemImage: "gear")
            }
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
