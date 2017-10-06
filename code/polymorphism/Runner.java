public class Runner{

  public static void main (String[] args){

    Recipe recipe = new Recipe();
    Carrot carrot = new Carrot(0.3f);
    Beef beef = new Beef(0.5f);
    recipe.addEdible(carrot);
    recipe.addEdible(beef);

    System.out.println("Beef total calories: " + beef.getTotalCalories());
    System.out.println("Carrot total calories: " + carrot.getTotalCalories());


    System.out.println("Recipe total calories: " + recipe.getTotalCalories());
  }
}
