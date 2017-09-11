import java.util.ArrayList;

public class Recipe{

  private ArrayList<Ingredient> ingredientList;

  public Recipe(){
    this.ingredientList = new ArrayList<>();
  }

  public ArrayList<Ingredient> getIngredientList(){
    return this.ingredientList;
  }

  public void addIngredient(Ingredient ingredient){
    this.ingredientList.add(ingredient);
  }

  public float getTotalCalories(){
    float totalCalories = 0f;
    for (Ingredient ingredient: ingredientList){
      totalCalories += ingredient.getTotalCalories();
    }
    return totalCalories;
  }

}
