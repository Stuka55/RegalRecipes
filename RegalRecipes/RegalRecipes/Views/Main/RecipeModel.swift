import Foundation

enum Category: String{
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
    let catagory: Category.RawValue
    let datePublished: String
    let url: String
    
}

extension Recipe{
    static let all: [Recipe] = [
        Recipe(name: "food1", image: "image1",description: "description1",ingredient: "ingred1", directions: "dircetions1", catagory: "cat1", datePublished: "date1", url: "url1"),
        Recipe(name: "food2", image: "https://upload.wikimedia.org/wikipedia/commons/a/ae/StrawberrySundae.jpg",description: "description2",ingredient: "ingred2", directions: "dircetions2", catagory: "cat2", datePublished: "date2", url: "url2"),
        Recipe(name: "food3", image: "https://www.simplyrecipes.com/thmb/dA6A2pYGIsrew9YnC269pd4aKF4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simply-Recipes-Best-Classic-Lasagna-Lead-1-b67f9c8bb82448d7ac34807d0d62244e.jpg",description: "description3",ingredient: "ingred1", directions: "dircetions3", catagory: "cat3", datePublished: "date3", url: "url3")
    ] // end of array
} // end of extension recipe
