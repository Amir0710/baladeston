class Limits {
  final int maxUserImageSize;
  final int maxCategoryImageSize;
  final int maxCollectionImageSize;
  final int maxVideoImageSize;
  final int maxVideoFileSize;
  final int minPasswordLength;
  final int phoneNumberLength;
  final int minFilterLimitSize;
  final int maxFilterLimitSize;
  final int minFilterRate;
  final int maxFilterRate;
  final int collectionMinCount;

  final int collectionMaxCount;

  const Limits({
    this.maxUserImageSize = 5,
    this.maxCategoryImageSize = 10,
    this.maxCollectionImageSize = 10,
    this.maxVideoImageSize = 5,
    this.maxVideoFileSize = 300,
    this.minPasswordLength = 8,
    this.phoneNumberLength = 11,
    this.minFilterLimitSize = 5,
    this.maxFilterLimitSize = 25,
    this.maxFilterRate = 5,
    this.minFilterRate = 0,
    this.collectionMinCount = 0,
    this.collectionMaxCount = 50, // for maximum collection video count
  });
}
