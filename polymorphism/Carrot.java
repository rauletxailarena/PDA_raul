public class Carrot implements Ingredient {

  private float caloriesPerKilo;
  private float weightInKg;
  private String name;


  public Carrot(float weightInKg){
    this.caloriesPerKilo = 400.0f;
    this.weightInKg = weightInKg;
    this.name = "Carrot";
  }

  public float getCaloriesPerKilo(){
    return this.caloriesPerKilo;
  }

  public float getWeightInKg(){
    return this.weightInKg;
  }

  public String getName(){
    return this.name;
  }

  public float getTotalCalories(){
    return (this.weightInKg * this.caloriesPerKilo);
  }

}
