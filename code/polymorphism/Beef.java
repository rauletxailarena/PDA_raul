public class Beef implements Edible {

  private float caloriesPerKilo;
  private float weightInKg;
  private String name;

  public Beef(float weightInKg){
    this.caloriesPerKilo = 2500.0f;
    this.weightInKg = weightInKg;
    this.name = "Beef";
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
