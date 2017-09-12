public class Runner{

  public static void main(String[] args){

    // Object from the subclass //
    VideoFile videoFile = new VideoFile(55.24, "Breaking Bad S04E02", "USA", "Vince Gilligan", VideoCodec.MOV, VideoType.SERIES);

    // Method that uses information inherited from another class //
    videoFile.displayVideoInfo();

  }

}
