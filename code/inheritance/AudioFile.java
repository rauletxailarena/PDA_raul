public class AudioFile extends MediaFile {

  private AudioCodec audioCodec;
  private AudioType audioType;

  public AudioFile (double length, String title, String nationality, String author, AudioCodec audioCodec, AudioType audioType) {
    super(length, title, nationality, author);
    this.audioType = audioType;
    this.audioCodec = audioCodec;
  }

  public AudioCodec getAudioCodec(){
    return this.audioCodec;
  }

  public AudioType getAudioType(){
    return this.audioType;
  }
}
