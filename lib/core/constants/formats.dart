class Formats {
  final List<String> allowImageFormats;
  final List<String> allowVideoFileFormats;
  final List<String> schemes;

  const Formats(
      {
      this.allowImageFormats = const ['.jpg', '.jpeg', '.png', '.webp'],
      this.allowVideoFileFormats = const ['.mp4'],
      this.schemes = const ['http', 'https']});
}
