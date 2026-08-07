class Formats {
  final List<String> userImageFormats;
  final List<String> categoryImageFormats;
  final List<String> videoImageFormats;
  final List<String> videoFileFormats;

  const Formats({
    this.userImageFormats = const ['jpg', 'jpeg', 'png', 'webp'],
    this.categoryImageFormats = const ['jpg', 'jpeg', 'png', 'webp'],
    this.videoImageFormats = const ['jpg', 'jpeg', 'png', 'webp'],
    this.videoFileFormats = const ['mp4'],

  });
}
