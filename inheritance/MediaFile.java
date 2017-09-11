public class MediaFile{

  double length;
  String title;
  String nationality;
  String author;

  public MediaFile(double length, String title, String nationality, String author){
    this.length = length;
    this.title = title;
    this.nationality = nationality;
    this.author = author;
  }

  public double getLenght(){
    return this.length;
  }

  public String getTitle(){
    return this.title;
  }

  public String getNationality(){
    return this.nationality;
  }

  public String getAuthor(){
    return this.author;
  }


}
