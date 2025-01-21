//
//  ViewController.swift
//  TableeeViewUI
//
//  Created by Kumari Mansi on 15/11/24.
//

import UIKit

struct Recipe{
    var recipeImage: String?
    var recipeName: String?
}

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblRecipeList: UITableView!
    
    var recipeList = [
        Recipe (recipeImage: "ABCD", recipeName: "Recipe Name 1"),
        Recipe (recipeImage: "XYZ", recipeName: "Recipe Name 2"),
        Recipe (recipeImage: "WWW", recipeName: "Recipe Name 3"),
        Recipe (recipeImage: "AAA", recipeName: "Recipe Name 4"),
        Recipe (recipeImage: "ABCD", recipeName: "Recipe Name 5"),
        Recipe (recipeImage: "XYZ", recipeName: "Recipe Name 6"),
        Recipe (recipeImage: "WWW", recipeName: "Recipe Name 7"),
        Recipe (recipeImage: "AAA", recipeName: "Recipe Name 8"),
        Recipe (recipeImage: "ABCD", recipeName: "Recipe Name 9"),
        Recipe (recipeImage: "XYZ", recipeName: "Recipe Name 10"),
        Recipe (recipeImage: "WWW", recipeName: "Recipe Name 11"),
        Recipe (recipeImage: "AAA", recipeName: "Recipe Name 12"),
        Recipe (recipeImage: "ABCD", recipeName: "Recipe Name 13"),
        Recipe (recipeImage: "XYZ", recipeName: "Recipe Name 14"),
        Recipe (recipeImage: "WWW", recipeName: "Recipe Name 15"),
        Recipe (recipeImage: "AAA", recipeName: "Recipe Name 16"),
        Recipe (recipeImage: "ABCD", recipeName: "Recipe Name 17"),
        Recipe (recipeImage: "XYZ", recipeName: "Recipe Name 18"),
        Recipe (recipeImage: "WWW", recipeName: "Recipe Name 29"),
        Recipe (recipeImage: "AAA", recipeName: "Recipe Name 20"),
        Recipe (recipeImage: "ABCD", recipeName: "Recipe Name 21"),
        Recipe (recipeImage: "XYZ", recipeName: "Recipe Name 22"),
        Recipe (recipeImage: "WWW", recipeName: "Recipe Name 23"),
        Recipe (recipeImage: "AAA", recipeName: "Recipe Name 24"),
                                      
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return recipeList.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipeList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell (withIdentifier:
        "recipecell" ) as? RecipeCell
        
        cell?.recipeImage.image = UIImage.init (named :
        recipe.recipeImage!)
        
        cell?.lblRecipeName.text = recipe.recipeName
        return cell!
    
    }


}

