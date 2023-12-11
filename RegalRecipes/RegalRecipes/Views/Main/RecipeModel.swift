import Foundation

enum Category: String, CaseIterable, Identifiable{
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup      = "Soup"
    case salad     = "Salad"
    case appetizer = "Appetizer"
    case main      = "Main"
    case side      = "Side"
    case dessert   = "Dessert"
    case snack     = "Snack"
    case drink     = "Drink"
}

struct Recipe: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredient: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
    
}

extension Recipe{
    static let all: [Recipe] = [
        Recipe(name: "food1", image: "image1",description: "description1",ingredient: "ingred1", directions: "dircetions1", category: Category.main.rawValue, datePublished: "date1", url: "url1"),
        Recipe(name: "food2", image: "https://upload.wikimedia.org/wikipedia/commons/a/ae/StrawberrySundae.jpg",description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",ingredient: "ingred2\nwerewt\nwertwet\njhfsdf", directions: "dircetions2\nasdfasfd\nuiyiy\ndfgsdfg", category: Category.dessert.rawValue, datePublished: "date2", url: "url2"),
        Recipe(name: "food3", image: "https://www.simplyrecipes.com/thmb/dA6A2pYGIsrew9YnC269pd4aKF4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simply-Recipes-Best-Classic-Lasagna-Lead-1-b67f9c8bb82448d7ac34807d0d62244e.jpg",description: "",ingredient: "ingred1", directions: "dircetions3", category: Category.main.rawValue, datePublished: "date3", url: "url3"),
        Recipe(name: "", image: "",description: "",ingredient: "", directions: "", category: "", datePublished: "", url: "")
    ] // end of array
} // end of extension recipe
