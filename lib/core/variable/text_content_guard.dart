class TextContentGuard {
  const TextContentGuard._();

  static final RegExp _controlCharacters =
  RegExp(r'[\x00-\x08\x0B\x0C\x0E-\x1F\x7F]');

  static final RegExp _htmlTagPattern = RegExp(r'<\/?[a-zA-Z][^>]*>');

  static final RegExp _emojiPattern = RegExp(
    r'[\u{1F300}-\u{1FAFF}\u{2600}-\u{27BF}\u{2190}-\u{21FF}]',
    unicode: true,
  );

  static bool hasControlCharacters(String value) =>
      _controlCharacters.hasMatch(value);

  static bool isEmojiOnly(String value) {
    final stripped = value.replaceAll(_emojiPattern, '').trim();
    return value.trim().isNotEmpty && stripped.isEmpty;
  }

  static bool containsHtml(String value) => _htmlTagPattern.hasMatch(value);
}
