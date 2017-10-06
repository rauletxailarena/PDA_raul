import java.util.ArrayList;

public class Recipe{

  private ArrayList<Edible> ingredientList;

  public Recipe(){
    this.ingredientList = new ArrayList<>();
  }

  public ArrayList<Edible> getEdibleList(){
    return this.ingredientList;
  }

  public void addEdible(Edible ingredient){
    this.ingredientList.add(ingredient);
  }

  public float getTotalCalories(){
    float totalCalories = 0f;
    for (Edible ingredient: ingredientList){
      totalCalories += ingredient.getTotalCalories();
    }
    return totalCalories;
  }

}
