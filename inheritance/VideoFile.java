public class VideoFile extends MediaFile {

  private VideoCodec videoCodec;
  private VideoType videoType;

  public VideoFile (double lenght, String title, String nationality, String author, VideoCodec videoCodec, VideoType videoType) {
    super(lenght, title, nationality, author);
    this.videoType = videoType;
    this.videoCodec = videoCodec;
  }

  public VideoCodec getVideoCodec(){
    return this.videoCodec;
  }

  public VideoType getVideoType(){
    return this.videoType;
  }

  public void displayVideoInfo(){
    System.out.println("Title: " + super.getTitle());
    System.out.println("Running length: " + super.getLenght());
    System.out.println("Author: " + super.getAuthor());
    System.out.println("nationality: " + super.getNationality());
    System.out.println("Type: " + this.getVideoType().toString());
    System.out.println("Codec: " + this.getVideoCodec().toString());
  }
}
